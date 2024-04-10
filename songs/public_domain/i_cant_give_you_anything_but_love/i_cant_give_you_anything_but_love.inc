\include "standard_header.ly"

title       = "I Can't Give You Anything but Love, Baby - 1928 - F"
subtitle    = "Music by Jimmy McHugh, words by Dorothy Fields"
subsubtitle = ""
% listen_url  = \markup { \with-url #"http://www.youtube.com/watch?v=ob4Bu17zVJo" "listen" }

% chords_used_guitar_size = #'0.9
chords_used = \chordmode {
}

changes = \transpose g f \chordmode {
    g1      g2/b bf:dim     a1:m7       d:7
    g       g2/b bf:dim     a1:m7       d:7
    d:m7    g:13.9-         c:6.9       s
    a:7     s               d4:7 r2.    r1
    
    g1      g2/b bf:dim     a1:m7       d:7
    d:m     g:13.9-         c:6.9       s
    c       cs:dim          g/b         e:7
    a:m7    d:7             g2/b bf:dim a:m7 d:7
}

melody = \relative c' {
    % \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \tempo  "Easy" 4 = 140
    \key f \major
    
    f4 e d f    | e d f d       | g1        | gs4. a8~ a2   | \break
    f4 e d f    | e d f a       | c1        | a4. g8~ g2    | \break
    f4 fs g2    | g4 gs8 a~ a2  | r4 c bf a | g1            | \break
    g4 gs a2    | a4 bf8 b~ b2  | d4 c bf a | c bf d, e     | \break
    \bar "||" \break
    
    f4 e d f    | e d f d       | g1        | gs4. a8~ a2   | \break
    c4 bf a c   | bf a c bf     | a1        | g4. f8~ f2    | \break
    d4 e f e    | g f e f       | c'1       | e4. d8~ d2    | \break
    cs,4 d c' bf | d d a a      | f2 r      | r1            | \break
}

