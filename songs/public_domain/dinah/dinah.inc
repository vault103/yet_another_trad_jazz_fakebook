\include "standard_header.ly"

title       = "Dinah - G"
subtitle    = "Music by Harry Akst, words by Sam Lewis and Joe Young - 1925"
source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Source: Julius Yang's Jam Book" }

chords_used = \chordmode {
    g       e:m7    a:m7        d:7
    bf:dim7 c:7     b:7         e:m
    ef:aug  cs:m7   c:9         a:7
}

guitar_chords = \chordmode {
    g       e:m7    a:m7        d:7
    bf:dim  c:7     b:7         e:m
    ef:aug  cs:m7   c:7         a:7
}

changes = \chordmode {
%    \key g \major
    g1      s       s           e:m7
    a:m7    d:7     g2  bf:dim7 a:m7    d:7
    g1      s       s           e:m7
    a:m7    d:7     g2  c:7     g       b:7
    e1:m    ef:aug  e:m7/d      cs2:m7  c:9
    e1:m7   a:7     a:m7        d:7
    g       s       s           e:m7
    a:m7    d:7     g2  c:7     g1
}

melody = \relative c' {
    \time 4/4
    \set Staff.timeSignatureFraction = #'(2 . 2)
    \tempo  "Bouncy" 4 = 180
    \key g \major
    d2 e2~          | e4 d8. e16 g8. a16 b4         | d b~ b2~      | b4 g8. a16 b8. g16 a8. b16    | \break
    d4 b4~ b2~      | b4 a8. b16 d8. b16 a4         | g4 e4~ e2     | e8 d d d~ d2                  | \break
    d2 e2~          | e4 d8. e16 g8. a16 b4         | d b~ b2~      | b4 g8. a16 b8. g16 a8. b16    | \break
    d4 b4~ b2~      | b4 a8. b16 d8. b16 a8. b16    | g1~           | g4 r4 r2                      | \break
    b8 g4 b8~ b2    | b8 g4 b8~ b2                  | b8 g4 b8~ b2~ | b4 b d c                      | \break
    b8 g4 b8~ b2    | b8 g4 g8 g8. a16 b4           | a1~           | a4 r4 r2                      | \break
    d,2 e2~         | e4 d8. e16 g8. a16 b4         | d4 b4~ b2~    | b4 g8. a16 b8. g16 a8. b16    | \break
    d4 b4~ b2~      | b4 a8. b16 d8. b16 a8. b16    | g1~           | g4 r4 r2
    \bar "||" \break
}

verseI = \lyricmode {
    Di -- nah __        | is there an -- y one          | fin -- er __          | in the state of Car -- o --   |
    lin -- a __         | If there is and you           | know 'er __           | show 'er to me __             |
    Di -- nah __        | with her Dix -- ie eyes       | bla -- zin' __        | how I love to sit and         |
    gaze in __          | to the eyes of Din -- ah --   | Lee __                |                               |
    Ev' -- ry night __  | why do I __                   | shake with fright? __ | be -- cause my                |
    Di -- nah might __  | change her mind __ "" a -- bout | me __               |                               |
    Di -- nah __        | if she wan -- dered to        | Chi -- na __          | I would hop an o -- cean      |
    lin -- er __        | just to be with Di -- nah     | Lee __                |                               |
}
