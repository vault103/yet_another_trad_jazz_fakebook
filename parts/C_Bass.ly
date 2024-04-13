\version "2.16.0"
\language "english"

\book {
    \bookOutputSuffix "C_Bass"
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

    #(define my_title "")
    #(define my_subtitle "")

    #(if (not pdf_c_bassI) (set! my_title title))
    #(if (not pdf_c_bassI) (set! my_subtitle subtitle))

    \header {
        title       = \my_title
        subtitle    = \my_subtitle
        subsubtitle = \subsubtitle
        source      = ""
        tagline     = ##f
        piece       = "C Bass"
        composer    = \source_url
        arranger    = \listen_url
    }


    \score {
        \transpose c c,, {
            <<
            \new ChordNames  {
                \chord_format
                \chord_names
            }
            \new Staff \with {
                 \remove "Time_signature_engraver"
                 \remove "Clef_engraver"
            } {
                \clef bass
                \chord_names
            }
            >>
        }
        \header {
            piece = ""
        }
        \layout {
            #(layout-set-staff-size 15)
            \context { \ChordNames
                \override ChordName.font-family = #'sans
                \override ChordName.font-size   = #4
            }
        }
    }
    \score {
        \transpose c c, {
            $(if(not pdf_c_bassI) #{
                <<
                    \new ChordNames  {
                        \chord_format
                        \changes
                    }
                    
                    \new Staff {
                        \clef bass
                        \page_format
                        \melody
                    }
                    \addlyrics { \verseI }
                    \addlyrics { \verseII }
                    \addlyrics { \verseIII }
                    \addlyrics { \verseIV }
                    \addlyrics { \verseV }
                    
                    % \new Staff { \clef bass \transpose c c, { \changes } }
                >>
            #}
            #{ << >> #})
        }
        \layout {
            \context { \ChordNames
                \override ChordName.font-family = #'sans
                \override ChordName.font-size   = #4
            }
        }
    }

    $(if pdf_c_bassI pdf_c_bassI)
    
    $(if pdf_c_bassII pageBreak)
    $(if pdf_c_bassII pdf_c_bassII)
        
    $(if pdf_c_bassIII pageBreak)
    $(if pdf_c_bassIII pdf_c_bassIII)

    $(if pdf_c_bassIIII pageBreak)
    $(if pdf_c_bassIIII pdf_c_bassIIII)

    \verseAlt
}
