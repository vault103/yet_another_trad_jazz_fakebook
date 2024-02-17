\version "2.16.0"
\language "english"

\book {
    \bookOutputSuffix "Tab_Guitar"
    \paper {
        indent = 0\cm
        print-page-number = ##f
        #(define fonts
            (make-pango-font-tree
                roman_font
                sans_font
                typewriter_font
                (/ staff-height pt 20)
            )
        )
    }

    \header {
        title       = \title
        subtitle	= \subtitle
        subsubtile  = \subsubtitle
        source      = ""
        tagline     = ##f
        piece       = "Guitar Tab"
        composer    = \source_url
        arranger    = \listen_url
    }
    
    \score {
        <<
            \new ChordNames  {
                \set majorSevenSymbol = \markup { (maj7) }
                \set chordNameExceptions = #chExceptions
                \guitar_changes
            }
    
            \new Staff { \melody }
    
            \addlyrics { \verseI }
            \addlyrics { \verseII }
            \addlyrics { \verseIII }
            \addlyrics { \verseIV }
            \addlyrics { \verseV }
    
            \new TabStaff {
                % \set stringTunings = #guitar-tuning
                \set TabStaff.stringTunings = #guitar-tuning
                \set TabStaff.minimumFret = #6
                \melody
            }
        >>
        \layout {
            \context { \ChordNames
                \override ChordName.font-family = #'sans
                \override ChordName.font-size   = #4
            }
        }
    }

    \verseAlt
}

