# Yet Another Trad-Jazz Fakebook (YATJF)
A [LilyPond](https://lilypond.org/) based project

## Project Hierarchy:
```
blank.ly            - Used to render the "blank.pdf" page we use to space
                      out the book when two page songs would otherwise
                      not be on opposite pages for reading.

Dockerfile          - Optional - Used to create a container builder image
                      for compiling the book, so you don't have to deal with
                      the horrors of custom lilypond font installation. If
                      you have docker locally use the following to compile:

                        make build_container

                        make docker_build

Makefile            - The compile process encoded in a military grade cypher
                      so strong even I can't understand much of it anymore
                      and apparently I wrote it.  Thankfully all you need to
                      use is "make all" and "make clean".  If the book
                      compile fails for missing fonts either install them
                      locally using the lilypond font instructions or save
                      yourself the touble and use my docker container
                      builder mentioned above.

fonts/              - Fonts used by the project.  Required by the docker
                      builder targets as we install them into the image.

    lilyjazz/       - OpenLilyPond font lilyjazz, included as submodule:
                      https://github.com/OpenLilyPondFonts/lilyjazz

include/            - Misc predefined fretboards for guitar, ukulele, bass,
                      etc.  This book uses jazz-style "closed" chord forms
                      by default.

                      standard_header.ly
                        Standard header include for all songs mostly setting
                        up variable defaults.

                      standard_parts.ly
                        Mostly jazz style chord naming tweaks and includes
                        "all_parts.ly" which is generated during build to
                        include all parts being compiled from parts/
parts/
                    - Standard score formats for each instrument including
                      any required key transposition, fredboards, etc that
                      are specific to the instrument.

songs/              - All song files.  Each song should be in its own
                      directory, but how nested doesn't matter.

    public_domain/  - Songs that I'm pretty sure are public domain based
                      on their copyright date.

                      I have a ton more songs I've worked out, but I keep
                      them in a private repo due to copyright concerns.

util/
    mk_list         - Generates the list of PDF files needed to build a
                      book, including Table Of Contents and any extra
                      blank.pdf files needed as spacers to ensure any two
                      page song will always be on opposite pages when
                      viewing.

    mk_toc          - Builds the Table Of Contents PDF pages.

    mk_book         - Does the final book assembly (PDF merge)

    mk_template     - Obsolete - Stubs out the files needed for a new song.
    
```

## Getting Started - Building The Book
### The Easy Way - Using Docker

Using [Docker](https://www.docker.com/) is the easiest way to use this
project.  I use it to create a "builder" image that we then run to do the
actual LilyPond compilations.

I use a number off odd dependencies some of which such as LilyPond fonts are
a chore to install correctly.  The docker image created by the Dockerfile
handles all of those chores with precision and keeps your own environment
free of any mess we might otherwise make.
```
make build_container    - Calls on docker build to craft our LilyPod builder
                          container image from the Dockerfile.  We only need
                          to do this once typically, unless you delete the
                          image from Docker's cache.

make docker_build       - A wrapper around docker run to use the image above
                          to compile the books.  It calls "make -j 32 all"
                          inside the container.

make docker_clean       - A wrapper around docker run to use the image above
                          to call "make clean".  We don't have to call this
                          from inside the container, but it's "cleaner" that
                          way just incase.
```

### The Hard Way - Using the project locally without Docker

This project isn't a normal LilyPond score.  It's designed to make it easy
to create and include leadsheets for new songs and automatically build out
all the various instrument books, in a consistant traditional fakebook jazz
style, update the table of contents, etc.  Because of that goal the process
combines individual songs built into seperate PDFs for each instrument
before then using PDF tools via Perl to merge them all into a final book per
instrument.  This requires more tools than just LilyPond and much more
process orchestration than a single command line could provide.

This project requires:
  - [LilyPond](https://lilypond.org/) itself
  - [lilyjazz fonts from OpenLilyPondFonts](https://github.com/OpenLilyPondFonts/lilyjazz)
  - [Perl](https://www.perl.org/), used for helper tasks under util/
  - [PDF::API2](https://metacpan.org/pod/PDF::API2), a Perl PDF library
  - [GNU Make](https://www.gnu.org/software/make/), used to tie everything together.
  - Probably more I forgot, check the Dockerfile for hints.

Once you have all these prerequisites installed properly the process is easy
to kick off.  If you goofed up any of the installs above, you'll know it
quickly when this doesn't work.  If this project doesn't build for you
there's a 99% chance you didn't install something above properly (fonts in
particular).
```
make all        - Makes everything as the name implies.  That
                  includes all songs found under songs/ complied into
                  seperate books for all instrument parts found under parts/

                  All compiled books end up under: output/

make clean      - Cleans up the giant mess we just make with make
                  all.  The process creates a lot of intermediate files
                  throughout this project directory and this job attempts to
                  safely delete them all.  It also deletes any compiled
                  books from output/ so make sure you save them off
                  somewhere before running this.
```
# How it all works

Honestly I'm not sure.  I wrote the first version of this mess almost a
decade ago mostly after 2am lite up with caffeine.  Here's how I _think_ it
works, but if you ask me any questions I'll deny I wrote any of this.

I think what is happening is that for each `*.ly` file of each song under
`songs/` we call lilypond to build us PDFs.

Each one of those song .ly files has an `\include "standard_parts.ly"`
entry.

The `include/standard_parts.ly` file then has an `\include
"./all_parts.ly"`.

That `all_parts.ly` file doesn't exist.  We build it via the Makefile to
`\include` all files under `parts/`.

Each one of those part files defines its own `\book` section and
subsequently a `\bookOutputSuffix` such as "Ukulele_GCEA" (for Ukuleles
tuned to standard GCEA).

So it's the combination of the song .ly file and the output suffix that
results in a PDF file such as
`songs/public_domain/avalon/avalon-f-Ukulele_GCEA.pdf`

Once those files are all built we do a little math, getting page count sizes
for all and saving them in match `*.size` files.

Then we use the `mk_list` utility to create *.list files for each
part/instrument that includes both all the song PDFs we need, but also any
blank.pdf files we need for proper spacing to avoid a two page song from
needing to turn the page while playing.

We then use all those details with the `mk_toc` utility to generate a Table
of Contents PDF.

And lastly we put it all together with `mk_book` into a single PDF for each
part/instrument.

# Adding your own songs

I suggest taking a look at the included song Avalon (`songs/public_domain/avalon/`) for
an example to copy as a template.

Copy the whole directory to a new directory somewhere under songs/
```
cp -Rp songs/public_domain/avalon/ songs/my_song/
```    
Take a look inside `songs/my_song/` and you'll find to files named
`avalon.inc` and `avalon-f.ly`.  Rename these to my_song versions:

```
cd songs/my_song/
mv avalon-f.ly my_song-f.ly
mv avalon.inc my_song.inc
```

## my_song-f.ly
First open up `my_song-f.ly` in an editor (the "-f" extention is for "Key of F"):
```
\version "2.19.82"
\include "avalon.inc"
title = "Avalon - F"

\include "standard_parts.ly"
```

We'll need to change two things here.  First, change the `\include
"avalon.inc"` to `\include "my_song.inc"` to match our earlier renames. 

We'll also want to change our title from `title = "Avalon - F"` to `title =
"My Song - Key of F"`.  It should look like this now:

```
\version "2.19.82"
\include "my_song.inc"
title = "My Song - Key of F"

\include "standard_parts.ly"
```

At this point take a moment and try to build the book.  It should compile
and include our new "My Song" automatically, both in the Table of Contents
and of course in the book itself as it falls in alphabetical order.  The
actual score will still be from Avalon, but we'll fix that next.

## my_song.inc

This is where the magic<sup>(tm)</sup> happens.  To create a song we are
only setting a few specific variables.  The book compile process and other
included .ly files will do all the heavy lifting of formatting it for each
instrument and key.

#### `title = "My Title"`

We already set this one in our `my_song-f.ly` file which overrides this, but
we should set it for good measure.  This will make more sense when we create
another file later called `my_song-c.ly` to automatically create another
copy of the score in the book in the _Key of C_ and so on.

#### `subtitle = "Music and lyrics by Joe Shoes - 1901"`

Set as you'd like for author, year info, etc to appear below the title on
the first song page.

#### `source_url  = \markup { \with-url #"https://site.com/mybook" "Source: Some Fakebook" }`

If you use this it should be a `\markup` value linking to where you sourced
this song, basically attribution.

#### `chords_used = \chordmode {}`

This should include a list of all the chords used anywhere in the song, in
the order they appear, but each only once.  We use this block to build a
quick guide of tabs at the top of the song for parts like guitar, ukulele,
etc.  No timings are needed here, just chord names.

#### `changes = \chordmode {}`

This is the actual chord changes of the song in time.  Timing must match the
melody and lyrics shown later.  For example:
```
changes = \chordmode {
    s2
    c1:7    s               s           s
    f:6     s               s           s
    c:7     s               s           s
    f:6     s               s           s
    d:7     s               s           s
    g:m6    s2      d:7     bf1:dim     s
    f:6     s               d:7         s
    g:m7    c:7             f:6         s
}
```
The column spacing seen here isn't strictly needed, but I find it very handy
to keep the timing clear.

#### `melody = {}`

A block used to define the chart itself.  This is also where we're defining
our staff, key signature, other light formatting light formatting.  It can
also be built up from other blocks as shown:

```
the_melody = \relative c' {
    \partial 2 c2 \bar "||"
    g'2 a2      | bf2 c     | bf4 a g2~     | g2 c,     | \break
    f1~         | f2 g2     | a1~           | a2 c,     | \break
    e2 f        | g f       | e4 d c2~      | c2 d      | \break
    a'1~        | a2 d,     | a'1~          | a2 d,     | \break
    a'2 bf2     | c d       | c4 bf a2~     | a2 d,     | \break
    g1~         | g2 a      | bf1~          | bf4 r d,2 | \break
    c2 f        | a c       | e4 d e2~      | e4 r d2   | \break
    bf1         | a         | f~            | f2 r2
    \bar "||" \break
}
melody = {
    \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \tempo "Very uptempo" 4 = 270
    \key f \major
    \the_melody
}
```
#### `verseI = \lyricmode {}`

These are `\lyricmode` blocks

If your melody has lyrics, this is where they get defined.  Standard
LilyPond rules apply, this must match the timing of your melody block above. 
If your song repeats with different lyrics, just add the next variations of
lyrics as `verseII`, `verseIII`, etc as needed.  Example lyrics:

```
verseI = \lyricmode {
    I
    found my      love in         Av -- a -- lon __   be --  
    side __       the             bay __              I      
    left my       love in         Av -- a -- lon __   and    
    sailed __     a --            way __              and    
    now I         dream of        Av -- a -- lon __   each   
    night __      each            day __              and    
    so I          think I'll      tra -- vel on __    to     
    Av __         a __            lon __                     
}
```
## Public Domain Music Resources
[PD Info / Search](https://www.pdinfo.com/)
