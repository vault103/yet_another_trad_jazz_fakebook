\version "2.19.82"
\include "standard_header.ly"

title       = "I've Found A New Baby - F"
subtitle    = "Words and music by Jack Palmer and Spencer Williams - 1926"
source_url  = \markup {
    \with-url #"http://cjam.lassecollin.se/songs2/ivefoundanewbaby111208.html" "Sources: C-Jam"
    ", "
    \with-url #"http://www.campusfive.com/swingguitarblog/" "changes: " \stout
}

c_jam_changes = \chordmode {  
%    \key f \major
    s2.
    d1:m    s       s       d:7
    g:7     c:7     f       a:7
    d:m     s       d:m     d:7
    g:7     c:7     f       s
    a:7     s       d:m7    s
    g:7     s       c:7     a:7
    d:m     s       d:m     d:7
    g:7     c:7     f       s
}

chords_used = \chordmode {
    d:m6    d:7     g:7     c:7
    f:6     a:7
}

stout_changes = \chordmode {
    s2.
    d1:m6   s       s       d:7
    g:7     c:7     f:6     a:7
    d:m6    s       s       d:7
    g:7     c:7     f:6     s
    a:7     s       d:m6    s
    g:7     s       c:7     a:7
    d:m6    s       s       d:7
    g:7     c:7     f:6     a:7
}

stout_guitar_changes = \chordmode {
    s2.
    d''1:m6 s       s       d'':7
    g'':7   c:7     f:6     a:7
    d'':m6  s       s       d'':7
    g'':7   c:7     f:6     s
    a:7     s       d:m6    s
    g:7     s       c:7     a:7
    d'':m6  s       s       d'':7
    g'':7   c:7     f:6     a:7
}

guitar_changes = \stout_guitar_changes
changes = \stout_changes

melody = \relative c'' {
    \time 4/4
    \key f \major
    \partial 2.
    gs8 a4 gs8 a4 \bar "||"
    f2 d2                   | r4 gs8 a4 gs8 a4  | f1            | r4 df'8 d4 df8 d4 | \break
    a2 a2                   | r4 a8 c4 a8 g4    | f1            | r4 gs8 a4 gs8 a4  | \break
    f2 d2                   | r4 gs8 a4 gs8 a4  | f1            | r4 df'8 d4 df8 d4 | \break
    a2 a2                   | r4 a8 c4 a8 g4    | f1~           | f2. r4            | \break
    r4 df'8 c8 df4 b8 df8   | b4 a8 b8 a4 a8 g8 | f4 g4 a2~     | a1                | \break
    r4 b8 bf8 b4 a8 b8      | a4 g8 a8 g4 g8 f8 | e4 f4 g4 gs4  | a4 a a a          | \break
    f2 d2                   | r4 gs8 a4 gs8 a4  | f1            | r4 df'8 d4 df8 d4 | \break
    a2 a2                   | r4 a8 c4 a8 g4    | f1~           | f4 r2.            \bar "||"
}

verseI = \lyricmode {
    I've found a new |
    ba -- by                    | I've found a new                      | girl,                 | my fash -- ion plate  |
    ba -- by                    | has got me a                          | whirl,                | Her new kind o'       |
    lov -- in                   | done made me her                      | slave,                | her sweet tur -- tle  |
    dov -- in                   | is all that I                         | crave. __             |                       |
    Sweet -- est miss, with a   | kiss ful o' bliss, can't re --        | sist some -- how; __  |                       |
    tells me lies, but she's    | wise, naugh -- ty eyes mes -- mer --  | ize, I wow and        | how! I don't mean     |
    may -- be,                  | I just had to                         | fall.                 | I've found a new      |
    ba -- by,                   | new ba -- by that's                   | all. __               |                       |
}

\include "standard_parts.ly"
