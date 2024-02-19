\version "2.16.0"
\language "english"

\book {
    \bookOutputSuffix "Eb"
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

    #(if (not pdf_ebI) (set! my_title title))
    #(if (not pdf_ebI) (set! my_subtitle subtitle))

    \header {
        title       = \my_title
        subtitle    = \my_subtitle
        subsubtitle = \subsubtitle
        source      = ""
        tagline     = ##f
        piece       = "Eb Instruments"
        composer    = \source_url
        arranger    = \listen_url
    }
    
    \score {
        \transpose ef c' {
            $(if(not pdf_ebI) #{
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
                \override ChordName.font-size   = #4
            }
        }
    }

    $(if pdf_ebI pdf_ebI)
    
    $(if pdf_ebII pageBreak)
    $(if pdf_ebII pdf_ebII)
        
    $(if pdf_ebIII pageBreak)
    $(if pdf_ebIII pdf_ebIII)

    $(if pdf_ebIIII pageBreak)
    $(if pdf_ebIIII pdf_ebIIII)

    \verseAlt
}
