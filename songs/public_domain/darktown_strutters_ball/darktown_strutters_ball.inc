\include "standard_header.ly"

title       = "Darktown Strutter's Ball - Bb"
subtitle    = "Written by Shelton Brooks - 1917"
source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Source: Julius Yang's Jam Book" }

chords_used = \chordmode {
    f:7     bf      g:7     c:7
    bf:dim  c:m7    ef      e:dim
    a:7     af:7
}

guitar_chords = \chordmode {
    f:7     bf      g:7     c:7
    bf:dim  c:m7    ef      e:dim
    a:7     af:7
}

changes = \chordmode {
%    \key bf \major
    bf2     bf:dim  c:m     f:7     bf      bf:dim  f1:7
    s               f4:7 ef:7 d2:7  g2:m    c:7     f1:7
    bf2     bf:dim  f1:7            d:7             g:m
    f2      f:aug7  d:m     f:7     g:m     c:7     f1:7

    bf1             bf2     g:7     c1:7            s
    f:7             s               bf2/d   bf:dim  c:m7    f:7
    bf1             bf2     g:7     c1:7            s
    ef              e:dim
    bf2 a4:7 af:7   g1:7            c:7             f:7             
    bf2     bf:dim  c:m7    f:7
}

guitar_changes = \chordmode {
%    \key bf \major
    bf2     bf:dim  c:m     f:7     bf      bf:dim  f1:7
    s               f4:7 ef:7 d2:7  g2:m    c:7     f1:7
    bf2     bf:dim  f1:7            d:7             g:m
    f2      f:aug7  d:m     f:7     g:m     c:7     f1:7

                    bf1             bf2     g:7
    c1:7            s               f:7
    f:7             bf2     bf:dim  c:m7    f:7
    bf1             bf2     g:7     c1:7
    c1:7            ef              e:dim
    bf2 a4:7 af:7   g1:7            c:7
    f:7             bf2     bf:dim  c:m7    f:7
}

melody = \relative c' {
    \time 4/4
    \tempo  "Loping" 4 = 140
    \key bf \major

    r4 bf' bf bf            | bf a g8 f4.       | r8 f g a bf c bf a    | \break
    g8 a4 f8~ f4 g8 gs      | a4 gs8 a8~ a4 g   | a2~ a4 a8 a           | \break
    bf4 bf a g8 f8~         | f4 f g a          | bf bf bf bf8 a        | bf8 a4 g8~ g4. cs,8    | \break
    d8 cs d e fs4 e8 d      | bf'8 a4 a8~ a4 gs | a4 gs a gs            | \break
    a8 gs4 a8~ a a gs a     | bf4 bf a8 g4 f8~  | f2. d8 c              | \break

    \pageBreak

    \bar "||" 
    bf4 d f8 f g f          | bf4 g f8 d4 d8    | c8 c e g~ g fs g a    | bf8 a4 g8~ g4 r4  | \break
    r4 f g a                | bf8 a4 g8~ g f g a | bf4 g bf g           | bf a g8 f4 d8     | \break
    bf4 d f g               | bf g f8 d4 d8     | c4 e g a8 a           | bf8 a4 g8~ g4 bf8 b | \break
    c4 bf c8 bf4 a8~        | a2 r4 g8 a        | bf4 a8 bf~ bf fs a4   | g2 r4 f4          | \break
    g4 a8 bf~ bf d4 bf8     | c4 a g8 f4 bf8~   | bf1~                  | bf4 r4 r2
    \bar "||" \break
}

verseI = \lyricmode {
    I've got some                               | good news hon -- ey,              | An in -- vi -- ta -- tion to the  |
    Dark town Ball. __  It's a                  | ver -- y swell __ af --           | fair, __  All the                 |
    "\"high" -- "browns\"" will be there. __    | I'll wear my                      | high silk hat and a               |
    frock tail coat, You                        | wear your Par -- is gown and your | new silk shaw, __ There           |
    ain't no doubt a --                         | bout it babe, __ We'll be the     | best dressed in the hall. __      |

    I'll be                             | down to get you in a          | ta -- xi hon -- ey you'd          |
    bet -- be be read -- y a -- bout    | half past eight __            | now dear -- ie                    |
    don't be late __ I want to          | be there when the             | band starts play -- ing. Re --    |
    mem -- ber when we                  | get there hon -- ey the       | two steps I'm goin' to            |
    have 'em all __ goin' to            | dance off both my shoes __    | when they                         |
    play the "\"Jel" -- ly Roll         | "Blues\"."  To --             | mor -- row night __ at the        |
    Dark -- town Strut -- ter's Ball __ |                               |                                   |
}

verseII = \lyricmode {
    We'll meet our                      | high -- toned neigh -- bors,          | An ex -- hi -- bi -- tion of the  |
    "\"ba" -- by "Dalls\"," And each    | one will do __ their                  | best, __ Just to                  |
    out -- class all the rest.          | And there'll be                       | danc -- ers from ev -- 'ry        |
    for -- eign land, __ The            | clas -- sic, buck and wing, and the   | wood -- en clog. __ We'll         |
    win that fif -- ty                  | dol -- lar prize __ When we step      | out and "\"Walk" the "Dog\"."     |
}

