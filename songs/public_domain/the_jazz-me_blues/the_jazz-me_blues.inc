\include "standard_header.ly"

title       = "The Jazz-Me Blues"
subtitle    = "Music by Tom Delaney - 1921"
source_url  = "none"

chords_used = \chordmode {
    ef1     f:7     bf:7
}

changes = \chordmode {
    ef          s               s           f2:7    bf:7
    ef1         s               s           s

    ef1         s               s           f2:7    bf:7
    ef1         s               s           s
}

melody = \relative c'' {
    \time 4/4
    \tempo  "Vigorous Swing" 4 = 220
    \key ef \major

    \customSpan
    \override TextSpanner.bound-details.left.text = "BREAK  "
    \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
    \override TextSpanner.bound-details.right.padding = #-11

    g8[ gf g bf ]   c[ bf g ef ]    | g af4 bf8~ bf4 bf,    | \break
    g'8[ gf g af ]  bf[ a bf b ]    | c f,4 f8~ f4 bf,8 bf  | \break
    g'8[ gf g bf ]  c[ bf g ef ]    | g af4 bf8~ bf4 c8 d   | \break
    ef8 \startTextSpan[ b c cf ]  bf[ g f ef ]  | f g4 ef8~ ef4 bf \stopTextSpan | \break
    
    g'8[ gf g bf ]  c[ bf g ef ]    | g af4 bf8~ bf4 r4     | \break
    g8[ gf g af ]   bf[ a bf b ]    | c f,4 f8~ f4 bf,8 bf  | \break
    g'8[ gf g bf ]  c[ bf g ef ]    | g af4 bf8~ bf4 c8 d   | \break
    ef8 \startTextSpan[ b c cf ]  bf[ g f ef ]  | f8 g4 ef8~ ef4 r4 \stopTextSpan | \bar "||"
}    

verseI = \lyricmode {
    Down in Lou -- si -- an -- a in that        | sun -- ny clime, __ they  |
    play a class of mu -- sic that is           | sup -- er fine. __ And it |
    makes no dif -- fer -- ence if it's __  _   | rain or shine, __ you can |
    hear that jazz -- in' mu -- sic play -- ing | all the time. __ It       |

    sounds so pe -- cu -- li -- ar 'cause the   | mu -- sic's queer,        |
    how its sweet vi -- bra -- tion seems to    | fill the air. __ _ _      |
    Then to you the whole world seems to        | be in rhyme, you want     |
    noth -- ing else but jazz -- in', jazz -- in' | all the time. __        |
}

verseII = \lyricmode {
    Ev -- 'ry -- bod -- y now a days __ _       | does that dance. __ You'd |
    bet -- er learn to jazz now while you've    | got the chance. __ _ This |
    pleas -- in synch -- o -- pa -- tion has __ _ | come to stay. __ Now __ _ |
    all you've got to do is just to             | jazz a -- way. __ So      |

    when you hear that band __ _ play -- ing    | at the ball, __           |
    grab your gal and do your stuff a --        | rand the hall. __ With __ - |
    noth -- ing on your mind but mu -- sic      | and your brown, on -- ly  |
    wait -- ing for the time so you can         | jazz her 'round.          |
}
