\version "2.16.0"
\language "english"

% roman_font      = "JazzText"
% sans_font       = "Nimbus Sans"
% sans_font       = "JazzCord"
% typewriter_font = "Luxi Mono"

flat_mark = \markup {
    \general-align #Y #-0.8
    \general-align #X #0.2
    \override #'(font-name . "lilyjazz-chord") { \hspace #0.1 \fontsize #-5 \raise #0.3 { \flat } }
}

title       = ""
subtitle    = ""
subsubtitle = ""
source_url  = ""
source_url  = ""
listen_url  = ""

guitar_changes	= ""
ukulele_changes	= ""
bass_changes	= ""

changes = \chordmode {}

ukulele_chords	= ""
guitar_chords	= ""
bass_chords	= ""
chord_names     = ""
chords_used     = \chordmode {}

ukulele_chords_b	= ""
guitar_chords_b     = ""
chord_names_b       = ""
chords_used_b       = \chordmode {}

melody = \relative c' {}


verseI = \lyricmode {}
verseII = \lyricmode {}
verseIII = \lyricmode {}
verseIV = \lyricmode {}
verseV = \lyricmode {}
verseAlt = \markup {}

footer = \markup {}

stout	= \markup { \with-url #"http://www.campusfive.com/swingguitarblog/" "Jonathan Stout" }
yang	= \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Julius Yang" }

chords_used_guitar_size = #'0.9

% Someone remind me wtf these I, II, III, etc parts are for.  Are these just
% repeats for the notes to be able to throw alt lyrics at them?

pdf_concertI = ##f
pdf_concertII = ##f
pdf_concertIII = ##f
pdf_concertIIII = ##f

pdf_rhythm_guitarI = ##f
pdf_rhythm_guitarII = ##f
pdf_rhythm_guitarIII = ##f
pdf_rhythm_guitarIIII = ##f

pdf_bass_guitarI = ##f
pdf_bass_guitarII = ##f
pdf_bass_guitarIII = ##f
pdf_bass_guitarIIII = ##f

pdf_bbI = ##f
pdf_bbII = ##f
pdf_bbIII = ##f
pdf_bbIIII = ##f

pdf_ebI = ##f
pdf_ebII = ##f
pdf_ebIII = ##f
pdf_ebIIII = ##f

pdf_ukulele_gceaI = ##f
pdf_ukulele_gceaII = ##f
pdf_ukulele_gceaIII = ##f
pdf_ukulele_gceaIIII = ##f

pdf_bb_bass_saxI = ##f
pdf_bb_bass_saxII = ##f
pdf_bb_bass_saxIII = ##f
pdf_bb_bass_saxIIII = ##f

pdf_c_bassI = ##f
pdf_c_bassII = ##f
pdf_c_bassIII = ##f
pdf_c_bassIIII = ##f
