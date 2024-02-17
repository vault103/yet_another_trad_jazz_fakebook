\version "2.16.0"
\language "english"

\book {
    \bookOutputSuffix "Rhythm_Guitar"
    \paper {
%        annotate-spacing = ##t
        print-page-number = ##f
        indent = 0\cm
        #(define bottom-margin (* 0 cm))
%        #(define top-margin (* 0 cm))
        #(define fonts
            (make-pango-font-tree
                roman_font
                sans_font
                typewriter_font
                (/ staff-height pt 20)
            )
        )
    }

    #(define my_title "")
    #(define my_subtitle "")

    #(if (not pdf_rhythm_guitarI) (set! my_title title))
    #(if (not pdf_rhythm_guitarI) (set! my_subtitle subtitle))

    \header {
        title       = \my_title
        subtitle    = \my_subtitle
        subsubtile  = \subsubtitle
        source      = ""
        tagline     = ##f
        piece       = "Rhythm Guitar"
        composer    = \source_url
        arranger    = \listen_url
    }

    \include "predefined-guitar-swing-fretboards.ly"

    \score {
        <<
        \new ChordNames  {
            \chord_format
            \chord_names
        }
        \new FretBoards {
            \override FretBoards.FretBoard.size                             = #chords_used_guitar_size
            \override FretBoard.fret-diagram-details.number-type            = #'arabic
            \override FretBoard.fret-diagram-details.finger-code            = #'none
            \override FretBoard.fret-diagram-details.mute-string            = #"x"
            \override FretBoard.fret-diagram-details.open-string            = #"o"            
            \override FretBoard.fret-diagram-details.xo-font-magnification  = #1
            \override FretBoard.fret-diagram-details.fret-label-font-mag    = #1
            \set stringTunings = #guitar-tuning
            \guitar_chords
        }
        >>
    }

    \score {
        $(if(not pdf_rhythm_guitarI) #{
            <<
                \new ChordNames  {
                    \chord_format
                    \changes
                }
                
                \new FretBoards {
                    % \override FretBoards.FretBoard.size                           = #'0.8
                    \override FretBoard.fret-diagram-details.number-type            = #'arabic
                    \override FretBoard.fret-diagram-details.finger-code            = #'none
                    \override FretBoard.fret-diagram-details.mute-string            = #"x"
                    \override FretBoard.fret-diagram-details.open-string            = #"o"
                    \override FretBoard.fret-diagram-details.xo-font-magnification  = #1
                    \override FretBoard.fret-diagram-details.fret-label-font-mag    = #1
                    % \set chordChanges = ##t
                    \guitar_changes
                }
                
                \page_format

                \melody
                \addlyrics { \verseI }
                \addlyrics { \verseII }
                \addlyrics { \verseIII }
                \addlyrics { \verseIV }
                \addlyrics { \verseV }
            >>
        #}
        #{ << >> #})
        \header {
            piece = " "
        }
        \layout {
            \context { \ChordNames
                \override ChordName.font-family = #'sans
                \override ChordName.font-size   = #4
            }
        }
    }

    $(if pdf_rhythm_guitarI pdf_rhythm_guitarI)

    $(if pdf_rhythm_guitarII pageBreak)

%{  What is this part??
    \score {
        <<
        \new ChordNames  {
            \chord_format
            \chord_names_b
        }
        \new FretBoards {
            \override FretBoards.FretBoard.size                             = #chords_used_guitar_size
            \override FretBoard.fret-diagram-details.number-type            = #'arabic
            \override FretBoard.fret-diagram-details.finger-code            = #'none
            \override FretBoard.fret-diagram-details.mute-string            = #"x"
            \override FretBoard.fret-diagram-details.open-string            = #"o"
            \override FretBoard.fret-diagram-details.xo-font-magnification  = #1
            \override FretBoard.fret-diagram-details.fret-label-font-mag    = #1
            \set stringTunings = #guitar-tuning
            \guitar_chords_b
        }
        >>
        \layout {
            \context { \ChordNames
                \override ChordName.font-family = #'sans
                \override ChordName.font-size   = #4
            }
        }
    }
%}

    $(if pdf_rhythm_guitarII pdf_rhythm_guitarII)

    $(if pdf_rhythm_guitarIII pageBreak)
    $(if pdf_rhythm_guitarIII pdf_rhythm_guitarIII)

    $(if pdf_rhythm_guitarIIII pageBreak)
    $(if pdf_rhythm_guitarIIII pdf_rhythm_guitarIIII)

    \verseAlt
}

