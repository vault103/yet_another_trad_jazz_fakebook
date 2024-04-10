\version "2.19.82"
\include "standard_header.ly"

title       = "Bye, Bye, Blackbird - F"
subtitle    = "Music by Ray Henderson, words by Mort Dixon - 1926"
source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Source: Julius Yang's Jam Book" }

chords_used = \chordmode {
    f       bf      g:m7    c:7
    af:dim7 d:7     bf:m7   f:7
    a:m7    g:7
}

guitar_chords = \chordmode {
    f       bf      g:m7    c:7
    af:dim  d:7     bf:m7   f:7
    a:m7    g:7
}

changes = \chordmode {
%    \key f \major
    f1          bf2     f       g:m7    c:7     f1
    f/a         af:dim7         g2:m7   c:7     c:7     d:7
    g1:m7       g2:m7   d:7     g1:m7           c:7
    g:m7        bf:m7           f               g2:m7   c:7
    f1:7        s               a:m7            d:7
    g:m7        s               s               c:7
    f           s               a:m7            d:7
    g:7         c:7             f               g:m7
}

guitar_changes = \chordmode {
%    \key f \major
    f1          bf2     f       g:m7    c:7     f1
    f           af:dim          g2:m7   c:7     c:7     d:7
    g1:m7       g2:m7   d:7     g1:m7           c:7
    g:m7        bf:m7           f               g2:m7   c:7
    f1:7        s               a:m7            d:7
    g:m7        s               s               c:7
    f           s               a:m7            d:7
    g:7         c:7             f               g:m7
}

melody = \relative c'' {
    \time 4/4
    \tempo "Bright Swing" 4 = 160
    \key f \major
    a4 a a a        | bf a a2       | a4 g g2       | g4 f f2       | \break
    f1              | g1            | f2 e2~        | e2 r2         | \break
    bf'4 bf bf bf   | c bf bf2      | bf4 a a2      | a4 g g2       | \break
    g1              | a1            | g2 f2~        | f1            | \break
    f4 c' c c       | c bf a g      | g1            | fs1           | \break
    d4 bf' bf bf    | bf a g f      | f1            | e1            | \break
    a4 a a a        | bf a a2       | a4 g g2       | g4 fs fs2     | \break
    g2 bf~          | bf2 e,        | f1~           | f1            | \break
    \bar "||" \break
}

verseI = \lyricmode {
    Pack up all my      | care and woe,         | here I go             | sing -- in low.   |
    Bye,                | bye,                  | black -- bird __      |                   |
    Where some bod -- y | waits for me,         | sug -- ar's sweet,    | so is he          |
    Bye,                | bye,                  | black -- bird __      |                   |
    No one here can     | love and un -- der -- | stand                 | me                |
    Oh, wait hard luck  | sto -- ries they all  | hand                  | me                |
    Make my bed and     | light the light,      | I'll ar -- rive       | late to -- night  |
    Black -- bird __    | bye,                  | bye __                |                   |
}
verseII = \lyricmode {
}

\include "standard_parts.ly"
