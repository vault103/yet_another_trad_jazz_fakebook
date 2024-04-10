\include "standard_header.ly"

title       = "Sweet Georgia Brown - Ab"
subtitle    = "Music by Ben Bernie and Maceo Pinkard, lyrics by Kenneth Casey - 1925"

chords_used = \chordmode {
    f:7     bf:7    ef:7    af
    f:m     c:7
}

changes = \chordmode {
%    \key af \major
    f1:7    s       s           s
    bf:7    s       s           s
    ef:7    s       s           s
    af      s       s           s
    f:7     s       s           s
    bf:7    s       s           s
    f:m     c:7     f:m         c:7
    af      f:7     bf:7  ef:7  af
}

julius_chords = \chordmode {
    f:7     bf:7    ef:7    ef:9
    af      bf:m7   g:m7    c:7
    f:m     af:7    g:7     gf:7
}

julius_guitar_chords = \chordmode {
    f:7     bf:7    ef:7    ef:7
    af      bf:m7   g:m7    c:7
    f:m     af:7    g:7     gf:7
}

julius_changes = \chordmode {
%    \key af \major
    f1:7            s               s               s
    bf:7            s               s               s
    ef:7            s               s               ef:9
    af              bf2:m7  ef:7    af1             g2:m7   c:7
    f1:7            s               s               s
    bf:7            s               s               c:7
    f:m             g2:m7   c:7     f1:m            g2:m7   c:7
    af2:7   g:7     gf:7    f:7     bf:7    ef:7    af      c:7
}

julius_guitar_changes = \chordmode {
%    \key af \major
    f1:7            s               s               s
    bf:7            s               s               s
    ef:7            s               s               ef:7
    af              bf2:m7  ef:7    af1             g2:m7   c:7
    f1:7            s               s               s
    bf:7            s               s               c:7
    f:m             g2:m7   c:7     f1:m            g2:m7   c:7
    af2:7   g:7     gf:7    f:7     bf:7    ef:7    af      c:7
}

melody = \relative c' {
    \time 4/4
    \tempo  "Easy" 4 = 140
    \key af \major
    f4 g a f            | c'8 a4 d4. c4         | f2 c8 a4 f8~      | f2. r4                | \break
    f4 g4 af4 f4        | c'8 af4 d4. c4        | f2 d8 c4 bf8~     | bf2. r4               | \break
    ef,4 f4 g4 ef4      | bf'8 g4 c4. bf4       | ef2 c8 g4 ef8~    | ef4 ef8 f~ f ef f4    | \break
    c'1~                | c4 ef,8 f~ f ef f4    | c'2. c4           | bf2. r4               | \break
    f4 g a f            | c'8 a4 d4. c4         | f2 c8 a4 f8~      | f2. r4                | \break
    f4 g4 af4 f4        | c'8 af4 d4. c4        | f2 d8 c4 bf8~     | bf2 r                 | \break
    c4. c8~ c2          | bf8 g4 c4. c4         | c4. c8~ c2        | bf8 g4 c4. r4         | \break
    ef,8 f4 af c4.      | ef8 e4 f c4.          | bf2 ef8 c4 af8~
    \bar "|."           | af1 \bar "|." 
}

verseI = \lyricmode {
    No gal made has             | got a shade on        | Sweet Geor -- gia Brown   |                       |
    Two left feet, but          | oh so neat has        | Sweet Geor -- gia Brown   |                       |
    They all sigh and           | wan -- na die for     | Sweet Geor -- gia Brown   | I'll tell you just    |
    why                         | you know I don't      | lie, not                  | much!                 |
    It's been said she          | knocks 'em dead when  | she lands in town:        |                       |
    Since she came why          | it's a shame how      | she cools 'em down.       |                       |
    Fel -- lers that            | she can't get are     | fel -- lers               | she ain't met.        |
    Geor -- gia claimed her,    | Geor gia named her,   | Sweet Geor -- gia Brown.  |                       |
}
