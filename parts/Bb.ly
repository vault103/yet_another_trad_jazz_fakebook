\version "2.16.0"
\language "english"

\book {
    \bookOutputSuffix "Bb"
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

    % WTF is the difference between $() and #() ?

    #(define my_title "")
    #(define my_subtitle "")

    #(if (not pdf_bbI) (set! my_title title))
    #(if (not pdf_bbI) (set! my_subtitle subtitle))

    \header {
        title       = \my_title
        subtitle    = \my_subtitle
        subsubtitle = \subsubtitle
        source      = ""
        tagline     = ##f
        piece       = \markup { "B" \flat_mark " Instruments" }
        composer    = \source_url
        arranger    = \listen_url
    }


    \score {    
        \transpose bf c' {
            $(if(not pdf_bbI) #{
                <<
                    \new ChordNames  {
                        \chord_format
                        \changes
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
        }
        \layout {
            \context { \ChordNames
                \override ChordName.font-family = #'sans
                \override ChordName.font-size = #4
            }
        }
    }

    $(if pdf_bbI pdf_bbI)
    
    $(if pdf_bbII pageBreak)
    $(if pdf_bbII pdf_bbII)
        
    $(if pdf_bbIII pageBreak)
    $(if pdf_bbIII pdf_bbIII)

    $(if pdf_bbIIII pageBreak)
    $(if pdf_bbIIII pdf_bbIIII)

    \verseAlt
}

