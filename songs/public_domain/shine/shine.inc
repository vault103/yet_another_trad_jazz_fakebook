\include "standard_header.ly"

title       = "That's Why They Call Me Shine - Eb"
subtitle    = "Music by Ford Dabney, music by Lew Brown and Cecil Mack - 1910"
source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Source: Julius Yang's Jam Book" }

chords_used = \chordmode {
    ef          bf:7            g:7         c:m
    f:7         ef:7            af          a:dim
    c:7         f:m
}

changes = \chordmode {
%    \key ef \major
    ef1         s               bf:7            s
    ef          s               bf:7            s
    g:7         s               c2:m    g:7     c1:m
    f:7         s               bf:7            s
    ef          s               bf:7            s
    g:7         s               c2:m    g:7     c:m     ef:7
    af1         a:dim           ef              c:7
    f:m         f2:m    bf:7    ef1             s
}

melody = \relative c'' {
    \time 4/4
    \tempo  "Vigorous Swing" 4 = 220
    \key ef \major
    bf4 bf bf2~     | bf4 bf c d    | c2 bf2~           | bf1           | \break
    bf4 bf bf2~     | bf4 bf c d    | c2 bf2~           | bf1           | \break
    g2 a            | b4 g a b      | c2 d              | ef1           | \break
    f,2 g           | a4 f g a      | bf2 c             | d1            | \break
    bf4 bf bf2~     | bf4 bf c d    | c2 bf2~           | bf2. bf4      | \break
    g2 a            | b4 g a b      | c2 d              | ef1           | \break
    r4 d2 c4        | d4 c af f     | r4 c'8 bf c4 bf   | c4 bf af g    | \break
    r4 f g af       | c2 bf         | ef1~              | ef2. r4       | \break
    \bar "||" \break
}

verseI = \lyricmode {
    Shine __ "" ""      | a way your            | blue skies            |               |
    Shine __ "" ""      | start with your       | shoe size             |               |
    Shine each          | place up make it      | look like             | new           |
    Shine your          | face up wear a        | smile or              | two           |
    Shine __ "" ""      | your these and        | those ies __          | you'll        |
    find that           | ev -- 'ry thing will  | turn out              | fine          |
    Folks will          | shine up to ya        | ev -- 'ry one will    | how dy do ya  |
    You'll make the     | whole world           | shine. __             |               |
}

verseII = \lyricmode {
    Just be -- cause __ | my hair is            | cur -- ly __          |                       |
    Just be -- cause __ | my teeth are          | pearl -- y __         |                       |
    Just be -- cause    | I al -- ways          | wear a                | smile                 |
    Like to             | dress up in the       | la -- test            | style                 |
    Just be -- cause __ | I'm glad I'm li __    | vin' __               | ""                    |
    Take trouble        | with a smile the      | world is              | mine                  |
    Such a              | hap -- py fel -- la   | Got that sun as       | my um -- brel -- la   |
    That's why they     | call me               | shine __              |                       |
}
