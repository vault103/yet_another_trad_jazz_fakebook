\include "standard_header.ly"

title       = "Some Of These Days - F"
subtitle    = "Music by Shelton Brooks - 1910"

chords_used = \chordmode {
    a:7     d:m     d:7     g:7
    c:7     f:7     bf      g:m
    f:dim   f
}

changes = \chordmode {
%    \key f \major
    s2.
    a1:7    s       d:m     s
    a:7     s       d:m     s
    d:7     s       g:7     s
    g:7     s       c:7     s
    f:7     s       bf      s
    d:7     s       g:m     s
    bf      f:dim   f       d:7
    g:7     c:7     f       s
}

melody = \relative c'' {
    \time 4/4
    \tempo  "Uptempo" 4 = 180
    \key f \major
    \partial 2. a4 af a \bar "||"
    g1~                 | g4 a8 a8~ a4 g    | f2 d2~    | d4 a' af a        | \break
    g1~                 | g4 a8 a a4 g8 f   | f2 d2~    | d4 d cs d         | \break
    bf'2 bf~            | bf8 bf a a fs4 d  | a'2 a2~   | a8 d, d d e4 f    | \break
    a2 a~               | a4 g8 g d'4 g,    | c1~       | c4 c c a          | \break
    f2 f~               | f4 r c' d         | bf2 bf~   | bf4 bf bf bf      | \break
    a2 a~               | a4 a a bf         | g1~       | g4 d cs d         | \break
    d'2 d2~             | d4 d cs d         | c2 a2~    | a4 c8 d~ d c a f  | \break
    a2 a2~              | a4 a8 c~ c a g4   | f1~       | f4 r r2
    \bar "||" \break
}

verseI = \lyricmode {
    Some of these       |
    days __             | you'll miss __ me,                | hon -- ey. __     | Some of these                 |
    days __             | you're gon -- a be so             | lone -- ly. __    | You'll miss my                |
    hug -- ging, __     | you're gon -- a miss my           | kiss -- ing. __   | You're gon -- na miss me      |
    hon -- ey, __       | when I'm far a -- way. __         | I feel so         | lone -- ly __                 |
    for you             | on -- ly, __                      | 'cause you know,  | hon -- ey, __ you've had your |
    way. __             | And when you                      | leave me, __      | you're gon -- na              |
    grieve me, __       | you'll miss __ your lit -- tle    | ba -- by, __      | yes, some __ of these days. __ |
}
verseII = \lyricmode {
}
