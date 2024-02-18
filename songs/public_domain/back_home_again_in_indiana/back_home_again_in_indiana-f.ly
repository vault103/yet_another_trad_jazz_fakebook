\version "2.19.82"
\include "standard_header.ly"

title       = "(Back Home Again In) Indiana - F"
subtitle    = "Ballard MacDonald and James F. Hanley - 1917"
source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Source: Julius Yang's Jam Book" }

chords_used = \chordmode {
    f       d:7     g:7     c:7
    f:7     bf      bf:m    a:7
    d:m     df:7    f:dim7
}

changes = \chordmode {
%    \key f \major
    s2.
    f1          d:7         g:7         s
    c:7         s           f           f:7
    bf          bf:m        f2  d:7     d1:7
    g:7         s           c:7         s
    f           d:7         g:7         s
    a:7         s           d:m         df:7
    d:m         a:7         d:m         f:dim7
    f           c:7         f           c:7
}

melody = \relative c' {
    \time 4/4
    \tempo  "Bright" 4 = 200
    \key f \major
    \partial 2. c4 f a \bar "||"
    c1~         | c4 d c a      | g2 d2~        | d2 e4 f   | \break
    a2. e4      | a2 g          | f1~           | f4 f e ef | \break
    d4 f bf2~   | bf2 f2        | c4 f a2~      | a2 a4 bf  | \break
    b4 a e2~    | e2 d          | g1~           | g4 c, f a | \break
    c1~         | c4 d c a      | g2 d2~        | d2 e4 f   | \break
    a2. e4      | a2 g          | f1~           | f2 f4 g   | \break
    a4 gs a f   | g fs g e      | f2 d2~        | d2 e4 d   | \break
    c2 f4 a     | c g bf a      | f1~           | f4 r4 r2
    \bar "||" \break
}

verseI_blocked = \lyricmode {
    Back home a --      |
    gain __             | in In -- di --    | a -- na __            | and it            |
    seems that          | I can             | see __                | the gleam -- ing  |
    can -- del light __ | still             | shi -- ing bright __  | through the       |
    syc -- a -- mores   | for               | me __                 | the new mown      |
    hay __              | sends all its     | frag -- rance __      | from the          |
    fields I            | used to           | roam __               | When I            |
    dream a -- bout the | moon light on the | wa -- bash __         | then I            |
    long for my         | In -- di -- an -- a | home __             |                   |
}

verseI = \lyricmode {
    Back home a --       
    gain __               in In -- di --      a -- na __              and it             
    seems that            I can               see __                  the gleam -- ing   
    can -- del light __   still               shi -- ing bright __    through the        
    syc -- a -- mores     for                 me __                   the new mown       
    hay __                sends all its       frag -- rance __        from the           
    fields I              used to             roam __                 When I             
    dream a -- bout the   moon light on the   wa -- bash __           then I             
    long for my           In -- di -- an -- a   home __                                  
}
verseII = \lyricmode {
}

\include "standard_parts.ly"
