\version "2.16.0"
\language "english"

\book {
    \bookOutputSuffix "Bb_Bass_Sax"
    \paper {
%        annotate-spacing = ##t
        indent = 0\cm
        print-page-number = ##f
        #(define bottom-margin (* 0 cm))
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

    #(if (not pdf_bb_bass_saxI) (set! my_title title))
    #(if (not pdf_bb_bass_saxI) (set! my_subtitle subtitle))

    \header {
        title       = \my_title
        subtitle    = \my_subtitle
        subsubtitle = \subsubtitle
        source      = ""
        tagline     = ##f
        piece       = "Bb Bass Saxophone"
        composer    = \source_url
        arranger    = \listen_url
    }

    \score {
        \transpose bf c' {
            <<
            \new ChordNames  {
                \chord_format
                \chord_names
            }
            \new Staff \with {
                 \remove "Time_signature_engraver"
                 \remove "Clef_engraver"
            } {
                \chord_names
            }
            >>
        }
        \header {
            piece = " "
        }
        \layout {
            % \once \override Staff.Clef.transparent            = ##t
            % \once \override Staff.TimeSignature.transparent   = ##t
            #(layout-set-staff-size 15)
            \context { \ChordNames
                \override ChordName.font-family = #'sans
                \override ChordName.font-size   = #4
            }
        }
    }
    \score {
        \transpose bf c' {
            $(if(not pdf_bb_bass_saxI) #{
                <<
                    \new ChordNames  {
                        \chord_format
                        \changes
                    }
            
                    \new Staff {
                        \clef treble
                        \page_format
                        \melody
                    }
                    
                    \addlyrics { \verseI }
                    \addlyrics { \verseII }
                    \addlyrics { \verseIII }
                    \addlyrics { \verseIV }
                    \addlyrics { \verseV }
                    
    %                \new Staff {
    %                    \clef treble
    %                    \changes
    %                }
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
    
    $(if pdf_bb_bass_saxI pdf_bb_bass_saxI)
    
    $(if pdf_bb_bass_saxII pageBreak)
    $(if pdf_bb_bass_saxII pdf_bb_bass_saxII)
        
    $(if pdf_bb_bass_saxIII pageBreak)
    $(if pdf_bb_bass_saxIII pdf_bb_bass_saxIII)

    $(if pdf_bb_bass_saxIIII pageBreak)
    $(if pdf_bb_bass_saxIIII pdf_bb_bass_saxIIII)

    \verseAlt
}
