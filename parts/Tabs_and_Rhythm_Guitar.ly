\version "2.16.0"
\language "english"

\book {
    \bookOutputSuffix "Tabs_and_Rhythm_Guitar"
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

    \include "predefined-guitar-swing-fretboards.ly"

    \score {
        <<
            \new ChordNames  {
                \set majorSevenSymbol = \markup { (maj7) }
                \set chordNameExceptions = #chExceptions
                \guitar_changes
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
    
            \new TabStaff {
                \set stringTunings = #guitar-tuning
                \set TabStaff.minimumFret = #6
                \melody
            }
    
            \addlyrics { \verseI }
            \addlyrics { \verseII }
            \addlyrics { \verseIII }
            \addlyrics { \verseIV }
            \addlyrics { \verseV }
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
