\include "standard_header.ly"

title       = "I'll See You In My Dreams - F"
subtitle    = "Music by Isham Jones, words by Gus Kahn - 1924"
subsubtitle = ""
listen_url  = \markup { \with-url #"http://www.youtube.com/watch?v=hNRHHRjep3E" "listen" }

% chords_used_guitar_size = #'0.9
chords_used = \chordmode {
}

changes = \chordmode {
    s2.
    bf1         s           bf:m6       s
    f:6.9       s2  e:7.9+  f1:6.9      s
    d:7         s           s           s
    g:7         s           g:m7        c:7
    bf          s           bf:m6       s
    f:6.9       s2  e:7.9+  f1:6.9      s
    d:7         s           a:7         d:m
    bf2  b:dim7 c1:7        f:6.9       f:7
}

melody = \relative c' {
    % \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    % \tempo  "Easy" 4 = 140
    \key f \major
    \partial 2. f4 e ef | \bar "||"
    
    d2 f    | g a       | g1~       | g2.   gs4 | \break
    a2 c    | d e       | d1~       | d1        | \break
    d2 d,   | e fs      | c'4 a c a~ | a1       | \break
    a2 d,   | e f       | a4 g a g~ | g1        | \break
    d2 f    | g a       | g1~       | g2. gs4   | \break
    a2 c    | d e       | d1~       | d         | \break
    ef2 d   | c2. d,4   | a'2 g     | f2. f4    | \break
    d2 f    | g a       | f1~       | f         | \break
    
    \bar "||" \break
}

verseI = \lyricmode {
    I'll "" ""  |
    see you     | in my     | dreams __                 |   I'll    |
    hold you    | in my     | dreams __                 |           |
    Some -- one | took you  | out of my arms __         |           |
    Still I     | feel the  | thrill of your charms. __ |           |
    
    Lips that   | once were | mine, __                  |        "" |
    Ten -- der  | eyes that | shine, __                 |           |
    They will   | light my  | way ton --                | night. I'll |
    see you     | in my     | dreams. __                |           |
}