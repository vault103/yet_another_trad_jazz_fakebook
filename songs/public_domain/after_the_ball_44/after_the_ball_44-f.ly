\version "2.19.82"
\include "standard_header.ly"

title       = "After The Ball - 4/4 time - F"
subtitle    = "Music and words by Charles K. Harris - 1891"
subsubtitle = "Originally a waltz, in 4/4 time here for jazz."
source_url  = \markup { \with-url #"http://cjam.lassecollin.se/songs2/aftertheball110510.html" "Source: C-jam" }
listen_url  = \markup { \with-url #"http://www.youtube.com/watch?v=wmwFsrJ8y9g" "YouTube" }

chords_used = \chordmode {
    f1 bf c:7 g:m d:7 g:7
}

changes = \chordmode {
%    \key f \major
    f1      bf      f       s
    f       s       c:7     s
    g:m     s       d:7     g:m
    c:7     s       f       c:7
    f       bf      f       s
    d:7     s       g:7     s
    c:7     s       f       d:7
    g:7     c:7     f       s
}

melody = \relative c'' {
    \time 4/4
    \key f \major

    a4 c2 a4    | f2 d2         | f1        | c1            | \break
    a'4 c2 a4   | f2 d2         | e1~       | e1            | \break
    bf'4 d2 bf4 | a2 g2         | fs1       | g1            | \break
    g4 a2 g4    | e2 c2         | c'1~      | c1            | \break
    a4 c2 a4    | f2 d2         | f1        | c1            | \break
    d4 fs2 a4   | d2 c2         | b1~       | b1            | \break
    c4 g2 g4    | g2 a4 bf      | a1        | c,1           | \break
    d1          | e2 c2         | f1~       | f2 r2         \bar "||" \break
}

verseI = \lyricmode {
    Af -- ter the       | ball is           | o --          | ver,      |
    Af -- ter the       | break of          | morn, __      |           |
    Af -- ter the       | danc -- ers       | leav --       | ing,      |
    Af -- ter the       | stars are         | gone __       |           |
    Man -- y a          | heart is          | ach --        | ing,      |
    If you could        | read them         | all, __       |           |
    Man -- y the        | hopes that have   | van --        | ished,    |
    Af --               | ter the           | ball. __      |           |
}

\include "standard_parts.ly"
