\version "2.19.82"
\include "standard_header.ly"

title       = "Blue Skies - Am"
subtitle    = "Irving Berlin - 1926"
source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Source: Julius Yang's Jam Book" }

chords_used = \chordmode {
    a:m     a:m7    c:m7    a:7
    d:m7    g:7     c:6     b:m7
    e:7     g:7sus4
}

changes = \chordmode {
%    \key a \minor
    a1:m            a:m/gs          a:m7/g          a:m/fs
    c2:m7   a:7     d:m7    g:7     c1:6            b2:m7   e:7
    a1:m            a:m/gs          a:m7/g          a:m/fs
    c2:m7   a:7     d:m7    g:7     c1:6            s
    c:6             g:7sus4         c:6             g2:7    c:6
    c1:6            g:7sus4         c:6             b2:m7   e:7
    a1:m            a:m/gs          a:m7/g          a:m/fs
    c2:m7   a:7     d:m7    g:7     c1:6            b2:m7   e:7
}

guitar_changes = \chordmode {
%    \key a \minor
    a1:m            a:m             a:m7            a:m
    c2:m7   a:7     d:m7    g:7     c1:6            b2:m7   e:7
    a1:m            a:m             a:m7            a:m
    c2:m7   a:7     d:m7    g:7     c1:6            s
    c:6             g:7sus4         c:6             g2:7    c:6
    c1:6            g:7sus4         c:6             b2:m7   e:7
    a1:m            a:m             a:m7            a:m
    c2:m7   a:7     d:m7    g:7     c1:6            b2:m7   e:7
}

melody = \relative c'' {
    \time 4/4
    \tempo  "Moderate Swing" 4 = 180
    \key a \minor
    a2 e'2~         | e2 d8 c d4                | e1~           | e2 \times 2/3 { d4 c d }  | \break
    e2 g,2~         | g2 g8 a4.                 | c1~           | c                         | \break
    a2 e'2~         | e2 d8 c d4                | e1~           | e2 \times 2/3 { d4 c d }  | \break
    e2 g,2~         | g2 \times 2/3 { g4 a c }  | c1~           | c                         | \break
    c8 d e f g2     | af8 g f4 g2               | f8 e d4 e2    | d8 c b4 c2                | \break
    c8 d e f g2     | af8 g f4 g2               | f8 e d4 e2    | \times 2/3 { d4 c b } c2  | \break
    a2 e'2~         | e2 d8 c d4                | e1            | r2 \times 2/3 { d4 c d }  | \break
    e2 g,2~         | g2 g4 a4                  | c1~           | c                         | \break
    \bar "||" \break
}

verseI_blocked = \lyricmode {
    Blue skies __               | smi -- ling at            | me __                 | No -- thing but   |
    blue skies __               | do I                      | see __                |                   |
    Blue -- birds __            | sing -- ing a             | song __               | No -- thing but   |
    Blue -- birds __            | all day ""                | long __               |                   |
    ne -- ver saw the sun       | shin -- ing so bright     | Ne -- ver saw things  | go -- ing so right |
    No -- tic -- ing the days   | hur -- ry -- ing by       | When you're in love,  | my how they fly!  |
    Blue days __                | all of them               | gone __               | No -- thing but   |
    blue skies __               | from now                  | on __                 |                   |
}

verseI = \lyricmode {
    Blue skies __                 smi -- ling at              me __                   No -- thing but    
    blue skies __                 do I                        see __                                     
    Blue -- birds __              sing -- ing a               song __                 No -- thing but    
    Blue -- birds __              all day ""                  long __                                    
    ne -- ver saw the sun         shin -- ing so bright       Ne -- ver saw things    go -- ing so right  
    No -- tic -- ing the days     hur -- ry -- ing by         When you're in love,    my how they fly!   
    Blue days __                  all of them                 gone __                 No -- thing but    
    blue skies __                 from now                    on __                                      
}
verseII = \lyricmode {
}

\include "standard_parts.ly"
