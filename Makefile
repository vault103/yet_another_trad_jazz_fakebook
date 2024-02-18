
# Keep intermediate files
.SECONDARY:

OUTPUT  := yatjf_jam_book
TITLE   := Yet Another Trad Jazz Fakebook
PAPER_SIZE := letter
# a4, etc

CHROME		:= "/cygdrive/c/Program Files/Google/Chrome/Application/chrome.exe"
# cygstart
LILYPOND    := lilypond
# LILYPOND_OPTS := --loglevel=ERROR
CONVERT     := convert
#PARTS_DIR   := $(shell cygpath -w "${CURDIR}/parts")
#FONTS_DIR   := $(shell cygpath -w "${CURDIR}/../fonts/lilyjazz/stylesheet")
INCLUDE_DIR	:= ${CURDIR}/include
PARTS_DIR   := ${CURDIR}/parts
FONTS_DIR   := ${CURDIR}/fonts

INCLUDES    := $(wildcard include/*.ly)
#PART_INC    := $(wildcard parts/*.ly)
#SHEETS      := $(filter-out $(INCLUDES) $(PART_INC), $(wildcard songs/*/*.ly))
SONGS		:= $(shell find songs -name '*.ly')

PARTS 		:= $(notdir $(basename $(wildcard parts/*.ly)))
#PARTS = Concert
#PARTS = Rhythm_Guitar Bb Bb_Bass_Sax C_Bass Concert Eb

$(foreach part,${PARTS},$(eval PDFS := ${PDFS} ${SONGS:%.ly=%-${part}.pdf}))

PUBLISH_PATH := output/

all: Makefile ${PARTS:%=${OUTPUT}-%.pdf}

publish: all
	mkdir -p ${PUBLISH_PATH}
	cp ${OUTPUT}-*.pdf \
	    "${PUBLISH_PATH}"

.revision_number.txt: Makefile ${SONGS}
	date +%m/%d/%Y > .revision_number.txt

$(foreach part,${PARTS},$(eval PART_${part}_PDFS := ${SONGS:%.ly=%-${part}.pdf}))
$(foreach part,${PARTS},$(eval ${OUTPUT}-${part}.pdf: ${PART_${part}_PDFS} ${part}.list blank.pdf util/mk_book .revision_number.txt; ./util/mk_book --paper-size "$${PAPER_SIZE}" --output "$$@" --instrument ${part} $${SONGS}))
$(foreach part,${PARTS},$(eval ${part}.list: ${SONGS} ${PART_${part}_PDFS} ${PART_${part}_PDFS:%.pdf=%.pdf.size} ${part}-toc.pdf.size;./util/mk_list $${@:%.list=%-toc.pdf} $${SONGS:%.ly=%-$${@:%.list=%}.pdf} > $$@))

## For reasons unknown, only when running in a container lilypond can't find
## the target file when the --output option is used because it does a
## chdir() to that output directory and the path to the file is no longer
## relative.  That's what is behind these extra --include paths for current
## directory and the song directory, we instead "pass" the unpathed file to
## process and let the include search find it.  Stupid, but it works in and
## out of containers now.
PART_TARGETS := $(patsubst %,\%-%.pdf, ${PARTS})
${PART_TARGETS}: %.ly include/standard_parts.ly include/standard_header.ly all_parts.ly
	"${LILYPOND}" \
		${LILYPOND_OPTS} \
		-dno-point-and-click \
		--include="${INCLUDE_DIR}" \
		--include="${PARTS_DIR}" \
		--include="${FONTS_DIR}" \
		--include=${CURDIR}/ \
		--include=${CURDIR}/$(dir $<) \
		-dpaper-size=\"${PAPER_SIZE}\" \
		--output=$(basename $<) $(notdir $<)

all_parts.ly:
	> "$@"
	for part in ${PARTS}; do echo "\\include \"./parts/$$part.ly\"" >> "$@"; done

# For more TOC ideas, see: http://reinhold.kainhofer.com/orchestrallily/Simple-examples.html#Table-of-contents
%-toc.pdf: ${SONGS} ${PDFS} ${PDFS:%.pdf=%.pdf.size} Makefile .revision_number.txt util/mk_toc
	./util/mk_toc `echo '$@' | sed -e 's/-toc\..*//'` ${SONGS}

%.pdf: %.ly
	"${LILYPOND}" \
		${LILYPOND_OPTS} \
		-dno-point-and-click \
		--include="${INCLUDE_DIR}" \
		--include="${PARTS_DIR}" \
		--include="${FONTS_DIR}" \
		--include="$$PWD" \
		-dpaper-size=\"${PAPER_SIZE}\" \
		--output=$(basename $<) $<

%.pdf.size: %.pdf
	perl -MPDF::API2 -e 'print PDF::API2->open(shift)->pages' "$<" > "$@"

read:
	# FULL_PATH=file:///`cygpath -w "$$PWD" | tr '\\\\' /`/${PDFS}; \
	# ${CHROME} "$$FULL_PATH"
	${CHROME} ${OUTPUT_URLS}

clean:
	rm -f ${PDFS}
	rm -f ${PDFS:%.pdf=%.ps}
	rm -f ${PDFS:%.pdf=%.pdf.size}
	rm -f ${PDFS:%.pdf=%.pdf.size.blank}
	rm -f ${PARTS:%=${OUTPUT}-%.pdf}
	rm -f ${PARTS:%=${OUTPUT}-%.ps}
	rm -f .revision_number.txt all_parts.ly blank.pdf
	rm -f toc.pdf *-toc.pdf *-toc.pdf.size *-toc.html *-toc.ly *.list *.stackdump

upload:
	cp ${OUTPUT}-*.pdf '/cygdrive/r/Google Drive/Jacuzzi Jam/'

install_fonts: lilyjazzchord.otf lilyjazzchord.ttf
	cp lilyjazzchord.otf "/cygdrive/c/Program Files (x86)/LilyPond/usr/share/lilypond/current/fonts/otf/lilyjazzchord.otf"
	cp lilyjazzchord.ttf "/cygdrive/c/Windows/fonts/lilyjazzchord.ttf"

build:
	docker build --progress=plain .
