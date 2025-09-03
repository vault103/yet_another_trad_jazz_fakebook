\version "2.16.0"
\language "english"

\book {
    \bookOutputSuffix "Ukulele_Tab_GCEA"

    \paper {
        indent = 0\cm
        print-page-number = ##f
        #(define fonts
            (set-global-fonts
                #:music "lilyjazz"
                #:brace "lilyjazz"
                #:roman "lilyjazz-text"
                #:factor (/ staff-height pt 20)
            )
        )
    }

%{
                #:sans "lilyjazz-chord"
%}

    #(define my_title "")
    #(define my_subtitle "")

    #(if (not pdf_ukulele_gceaI) (set! my_title title))
    #(if (not pdf_ukulele_gceaI) (set! my_subtitle subtitle))

    \header {
        title       = \my_title
        subtitle    = \my_subtitle
        subsubtile  = \subsubtitle
        source      = ""
        tagline     = ##f
        piece       = "Ukulele GCEA ('C' tuning)"
        composer    = \source_url
        arranger    = \listen_url
    }

    \include "predefined-ukulele-swing-fretboards.ly"

    \score {
        <<
        \new ChordNames {
            \chord_format
            \chord_names
        }
        \new FretBoards {
            \override FretBoard.fret-diagram-details.number-type            = #'arabic
            \override FretBoard.fret-diagram-details.finger-code            = #'none
            \override FretBoard.fret-diagram-details.mute-string            = #"x"
            \override FretBoard.fret-diagram-details.open-string            = #"o"
            \override FretBoard.fret-diagram-details.xo-font-magnification  = #1
            \override FretBoard.fret-diagram-details.fret-label-font-mag    = #1
            \set stringTunings = #ukulele-tuning
            \ukulele_chords
        }
        >>
        \header {
            piece = " "
        }
        \layout {
            \context {
                \chord_format
%                \ChordNames
%                \override ChordName.font-family = #'sans
%                \override ChordName.font-size   = #4
            }
        }
     }
    
    \score {
        $(if(not pdf_ukulele_gceaI) #{
            <<
                \new ChordNames  {
                    \chord_format
                    \changes
                }

                \new FretBoards {
                    \override FretBoard.fret-diagram-details.number-type            = #'arabic
                    \override FretBoard.fret-diagram-details.finger-code            = #'none
                    \override FretBoard.fret-diagram-details.mute-string            = #"x"
                    \override FretBoard.fret-diagram-details.open-string            = #"o"
                    \override FretBoard.fret-diagram-details.xo-font-magnification  = #1
                    \override FretBoard.fret-diagram-details.fret-label-font-mag    = #1
                    
                    \set stringTunings = #ukulele-tuning
                    \ukulele_changes
                }

                \page_format
                \new Staff {
                    \melody
                }
                \new TabStaff {
                    \set Staff.stringTunings = \stringTuning <g c' e' a'>
                    \melody
                }
                \addlyrics { \verseI }
                \addlyrics { \verseII }
                \addlyrics { \verseIII }
                \addlyrics { \verseIV }
                \addlyrics { \verseV }
            >>
        #}
        #{ << >> #})
        \layout {
            \context {
                \chord_format
%                \ChordNames
%                \override ChordName.font-family = #'sans
%                \override ChordName.font-size   = #4
            }
        }
     }

    $(if pdf_ukulele_gceaI pdf_ukulele_gceaI)

    $(if pdf_ukulele_gceaII pageBreak)
    $(if pdf_ukulele_gceaII pdf_ukulele_gceaII)

    $(if pdf_ukulele_gceaIII pageBreak)
    $(if pdf_ukulele_gceaIII pdf_ukulele_gceaIII)

    $(if pdf_ukulele_gceaIIII pageBreak)
    $(if pdf_ukulele_gceaIIII pdf_ukulele_gceaIIII)

    \verseAlt
}
