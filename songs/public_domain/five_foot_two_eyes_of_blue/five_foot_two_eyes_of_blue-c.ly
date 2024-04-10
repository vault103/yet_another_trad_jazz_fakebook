\version "2.19.82"
\include "standard_header.ly"

title       = "Five Foot Two, Eyes Of Blue - C"
subtitle    = "Music by Ray Henderson, lyrics by Sam M. Lewis and Joseph Widow Young - 1925"
subsubtitle = ""
source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Source: Julius Yang's Jam Book" }

chords_used = \chordmode {
    c       e:7     a:7     e:m7
    d:7     g:7     c:6     d:9
    g:13    g:11    a:13    a:m7
    d:m7    g:9
}

guitar_chords = \chordmode {
    c       e:7     a:7     e:m7
    d:7     g:7     c:6     d:7
    g:7     g:7     a:7     a:m7
    d:m7    g:7
}

changes = \chordmode {
%    \key c \major
    c1      e:7     a:7             e2:m7   a:7
    d1:7    g:7     c2:6    a:7     d:9     g:13
    c1      e:7     a:7             e2:m7   a:7
    d1:7    g:13    c2:6    g:11    c1
    e1:7    s       e:m7            a:13
    a:m7    d:9     g:7             d2:m7   g:9
    c1      e:7     a:7             e2:m7   a:7
    d1:7    g:7     c:6             d2:m7   g:7
}

guitar_changes = \chordmode {
%    \key c \major
    c1      e:7     a:7             e2:m7   a:7
    d1:7    g:7     c2:6    a:7     d:7     g:7
    c1      e:7     a:7             e2:m7   a:7
    d1:7    g:7     c2:6    g:7     c1
    e1:7    s       e:m7            a:7
    a:m7    d:7     g:7             d2:m7   g:7
    c1      e:7     a:7             e2:m7   a:7
    d1:7    g:7     c:6             d2:m7   g:7
}

melody = \relative c' {
    \time 4/4
    \set Staff.timeSignatureFraction = #'(2 . 2)
    \tempo  "Uptempo" 4 = 200
    \key c \major
    e4 g e r        | e gs e r8 e   | e4 a e a  | e a8 e~ e4 a      | \break
    c4 a c a        | g2 a          | e1~       | e2. r4            | \break
    e4 g e r        | e gs e r      | e a e a   | e a8 e8~ e4 a     | \break
    c a c a         | g2 e          | c1~       | c4 e ds e         | \break
    b' c b r8 e,    | b'4 c b r     | b a b a~  | a1                | \break
    a4 b a r8 d,8   | a'4 b a r     | b d b g   | f8 e4 d8~ d4 ds   | \break
    e4 g e r        | e gs e r      | e a e a   | e a8 e8~ e4 a     | \break
    c a c a         | g2 a          | c1~       | c2. r4
    \bar "||" \break
}

verseI = \lyricmode {
    Five foot two           | eyes of blue, but     | oh what those five        | foot could do __ has      |
    an -- y bo -- dy        | seen my               | gal? __                   |                           |
    Turned up nose,         | turned down hose,     | ne -- ver had no          | o -- ther beaus __ has    |
    an -- y bo -- dy        | seen my               | gal? __                   | Now if you                |
    run in to a             | five foot two,        | cov -- ered with fur. __  |                           |
    dia -- mond rings and   | all those things      | bet cha life it           | is -- n't her __ but      |
    could she love          | chould she woo?       | could she, could she,     | could she coo? __ has     |
    an -- y bo -- dy        | seen my               | gal? __                   |                           |
}

\include "standard_parts.ly"
