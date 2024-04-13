\version "2.16.0"
\language "english"

\book {
    \bookOutputSuffix "C_Treble"
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

    #(if (not pdf_concertI) (set! my_title title))
    #(if (not pdf_concertI) (set! my_subtitle subtitle))

    \header {
        title       = \my_title
        subtitle    = \my_subtitle
        subsubtitle = \subsubtitle
        source      = ""
        tagline     = ##f
        piece       = "C Treble"
        composer    = \source_url
        arranger    = \listen_url
    }

    \score {
        $(if(not pdf_concertI) #{
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
        \layout {
            \context { \ChordNames
                \override ChordName.font-family = #'sans
                \override ChordName.font-size   = #4
            }
        }
    }
    
    $(if pdf_concertI pdf_concertI)
    
    $(if pdf_concertII pageBreak)
    $(if pdf_concertII pdf_concertII)
        
    $(if pdf_concertIII pageBreak)
    $(if pdf_concertIII pdf_concertIII)

    $(if pdf_concertIIII pageBreak)
    $(if pdf_concertIIII pdf_concertIIII)

    \verseAlt
}
