\include "standard_header.ly"

title       = "Diga Diga Doo"
subtitle    = "Music by Jimmy McHugh, Words by Dorothy Fields - 1928"
subsubtitle = ""

chords_used = \chordmode {
    d1:m    a:7     c:7     f       d:7     g:m7
}

changes = \chordmode {
    s8
    d1:m            s               s               s
    d2:m    a:7     d1:m            d2:m    a:7     d1:m
    d1:m            s               s               s
    d2:m    a:7     d1:m            d2:m    a:7     d1:m
    c1:7            s               f               s
    d:7             s               g:m7            a:7
    d1:m            s               s               s
    d2:m    a:7     d1:m            d2:m    a:7     d1:m
}

advanced_changes = \chordmode {
    \set majorSevenSymbol = \markup { (maj7) }
    s8
    d2:m    d:m7+   d:m7    d:m6    d:m     d:m7+   d:m7    d:m6
    d2:m    a:7     d1:m            s2      a:7     d1:m
    s2      d:m7+   d:m7    d:m6    d:m     d:m7+   d:m7    d:m6
    d2:m    a:7     d1:m            s2      a:7     d1:m
    c1:7            s               f               s
    d:7             s               g:m7            a2:7/e  a:7.5-/ef
    d2:m    d:m7+   d:m7    d:m6    d:m     d:m7+   d:m7    d:m6
    d2:m    a:7     d1:m            s2      a:7     d1:m
}

changes = \advanced_changes

melody = \relative c'' {
    \time 4/4
    \tempo "Fast" 4 = 190
    \key f \major
    \partial 8 bf8 \bar "||"

    d4 d a a            | d d a2            | d4 d a a8 a           | d8 d d4 a2        | \break
    f8 e f fs g4 f8 e   | f4 d2.            | f8 e f fs g4 f8 e     | d1                | \break
 
    d'4 d a a           | d d a4. a8        | d4 d a a8 a           | d8 d d4 a2        | \break
    f8 e f fs g4 f8 e   | f4 d2.            | f8 e f fs g4 f8 e     | d1                | \break
    
    c4 d c d            | c8 d c d c4 c'    | a4 f2.~               | f1                | \break
    d4 ef d ef          | d8 ef d ef d4 d'  | bf4 g2.               | a8 a a a a bf4 a8 | \break

    d4 d a a            | d d a2            | d4 d a a8 a           | d8 d d2 a4        | \break
    f8 e f fs g4 f8 e   | f4 d2.            | f8 e f fs g4 f8 e     | d2. r4            | \break

    \bar "||" \break
}

verseI = \lyricmode {
    Oh                              |
    Zu -- lu man is                 | fee -- ling blue                      |
    Hear his heart beat a           | lit -- tle tat -- too                 |
    Di -- ga di -- ga doo di -- ga  | doo doo                               |
    Di -- ga di -- ga doo di -- ga  | doo                                   |
    
    You love me and                 | I love you and                        |
    when you love it is             | na -- tu -- ral to...                 |
    Di -- ga di -- ga doo di -- ga  | doo doo                               |
    Di -- ga di -- ga doo di -- ga  | doo                                   |

    I'm so ve -- ry                 | di -- ga -- di -- ga doo by           |
    na -- ture__                    |
    If you don't say                | di -- ga -- di -- ga to your          |
    mate you're                     | gon -- na lose your Pa -- pa!  The    |

    way these pret -- ty            | girl -- ies smile                     |
    How can this be a               | Vir -- gin Isle   with                |
    Di -- ga di -- ga doo di -- ga  | doo doo                               |
    Di -- ga di -- ga doo di -- ga  | doo                                   |
}
verseII = \lyricmode {
}

footer = \markup {
    
    \column {
        \line {
            \bold "Intro Lyrics"
        }

        \hspace #0.1

        \line {
            \column {
                "There's a spot I know,"
                "A place they call Samoa by the sea"
                "Loving there is just the most,"
                "They palaver in a code..."
            }
        }

        \hspace #0.1
        \hspace #0.1

        \line {
            \column {
                "They command each other,"
                "Understand each other perfectly."
                "Love and Mamas there are free."
                "You don't give them repartee"
            }
        }

        \hspace #0.1
        \hspace #0.1
        
        \line {
            \column {
                "Wooing a tropical maiden"
                "Doesn't need topical talk"
                "You maneuver, and if you approve her"
                "You can win her love in a walk!"
            }
        }

    }
}
