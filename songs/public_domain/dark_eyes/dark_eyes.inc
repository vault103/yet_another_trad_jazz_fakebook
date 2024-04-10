\include "standard_header.ly"

title       = "Очи чёрные (Dark Eyes) - Gm"
subtitle    = "Music by Florian Hermann (via Valse hommage), words by Yevhen Hrebinka - 1879/1843"
subsubtitle = ""
% source_url  = \markup { \with-url #"http://creolejazzband.com/Fake%20Books" "source" }
% source_url  = \markup { \with-url #"http://cjam.lassecollin.se/songs2/bringmesunshine110408.html" "source" }
% source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Julius Yang" }
% listen_url  = \markup { \with-url #"http://www.youtube.com/watch?v=ob4Bu17zVJo" "listen" }

% chords_used_guitar_size = #'0.9
chords_used = \chordmode {
    d:7 g:m6 c:m6
}

changes = \chordmode {
    \partial 2 s2
    d1:7 s g:m6 s d:7 s g:m6 s
    c:m6 s g:m6 s d:7 s g:m6 s
    d:7  s g:m6 s d:7 s g:m6 s
    c:m6 s g:m6 s d:7 s g:m6 s
}

melody = \transpose c' bf \relative c' {
    % \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \tempo  "Easy" 4 = 140
    \key a \minor

    \partial 2 ds4 e \bar "||"
    f4. e8 e2   | r2 ds4 e      | f4. e8 e2     | r2 e4 a   | \break
    a4. gs8 gs2 | r2 b4 c       | b4. a8 a2     | r2 a4 c   | \break
    c4. b8 f2   | r2 c'4 b      | b4. a8 e2     | r2 ds4 e  | \break
    f4. e8 e2   | r2 b4 c       | b4. a8 a2     | r2 ds4 e  | \break
    f4. e8 e2   | r2 ds4 e      | f4. e8 e2     | r2 e4 a   | \break
    a4. gs8 gs2 | r2 b4 c       | b4. a8 a2     | r2 a4 c   | \break
    c4. b8 f2   | r2 c'4 b      | b4. a8 e2     | r2 ds4 e  | \break
    f4. e8 e2   | r2 b'4 c8 c   | b4. a8 a2~    | a4 r4 r2  \bar "||" \break
}


verseI = \lyricmode {
    Where the   |
    Vol -- ga flows,    | A sweet   | Rus -- sian rose  | set my    |
    soul a -- flame,    | Son -- ia | was her name.     | Her dark  |
    flash -- ing eyes,  | seemed to | hyp -- no -- tize, | My heart |
    missed a beat       | when we   | two would meet.   | Once neath |
    Rus -- sian skies,  | We found  | Par -- a -- dise, | Then I    |
    sailed a -- way,    | Leav -- ing | her to stay.    | Now a     |
    vis -- ion fair,    | Calls me  | to her there,     | And I     |
    re -- a -- lize     | the lure of | her dark eyes. __ |         |
}
