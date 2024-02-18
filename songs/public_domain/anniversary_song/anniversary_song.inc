\include "standard_header.ly"

title       = "Anniversary Song 4/4 - C"
% subtitle    = "Music by Iosif Ivanovici - 1880"
subsubtitle = ""
% source_url  = \markup { \with-url #"http://creolejazzband.com/Fake%20Books" "source" }
% source_url  = \markup { \with-url #"http://cjam.lassecollin.se/songs2/bringmesunshine110408.html" "source" }
% source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Julius Yang" }
% listen_url  = \markup { \with-url #"http://www.youtube.com/watch?v=ob4Bu17zVJo" "listen" }

% chords_used_guitar_size = #'0.9
chords_used = \chordmode {
}

changes = \chordmode {
    e1:7    s   s   s
    a:m     s   s   a:7
    d:m     s   a:m s
    e:7     s   a:m s
    d:m7    g:7 c   s
    d:m7    g:7 c   s
    e:7     s   a:m s
    d:m     e:7 a:m s
}

melody = \relative c' {
    % \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \tempo  "Easy" 4 = 140
    \key c \major

    \bar "|:"
    e1~         | e2 gs4 a  | b1~           | b2 gs4 e  | \break
    c'1~        | c2 b4 a   | e'1~          | e2 r4 e   | \break
    f1~         | f2 e4 d   | e1~           | e2 d4 c   | \break
    b1~         | b2 c4 b   | a1~           | a2 r      | \bar ":|" \break
    a'2 a4 a    | a2 a4 a   | a2 g4 fs8 g~  | g2 r      | \break
    f2 f4 f     | f2 f4 f   | f2 e4 ds8 e~  | e2 r4 e4  | \break
    d2 d4 d     | d2 d4 d   | d2 c4 b8 a~   | a2 r4 a'4 | \break
    f2 d4 b     | c2 b      | a1            | r1        | \bar "||"
}

verseI = \lyricmode {
}
verseII = \lyricmode {
}
