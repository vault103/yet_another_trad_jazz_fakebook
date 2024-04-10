\include "standard_header.ly"

title       = "That's-A-Plenty - F"
subtitle    = "Music by Lew Pollack - 1914"
subsubtitle = ""
source_url  = \markup { \with-url #"http://www.wikifonia.org/node/19716" "source" }
listen_url  = \markup { \with-url #"https://www.youtube.com/watch?v=rgYxzLzOSOk" "YouTube" }

chords_used = \chordmode {
    d1:m    a:7     d:m7    bf:7    e:m7.5- g:m7    c:7     f
    f:7+    f:6     af:dim  g:m7.5- gs:dim  ef:7    d:7
}

changes = \chordmode {
    \repeat volta 2 {
        d1:m        s               s               s
        a:7         s
    }
    \alternative {
                                  { d2:m    d:m7/c      bf:7    a:7 }
                                  { d2:m e4:m7.5- a:7   d1:m }
    }
    g:m7            c:7             f               f2:7+   f:6
    g1:m7           c:7             f2      af:dim  g:m7.5- f:6
    g1:m7           c:7             f               f2:7+    f:6
    gs1:dim         f4:7 ef:7 d2:7  g2:m7 c:7       f4. bf4:7 a:7
}

guitar_changes = \chordmode {
    \repeat volta 2 {
        d1:m        s               s               s
        a:7         s
    }
    \alternative {
                                  { d2:m    d:m7        bf:7    a:7 }
                                  { d2:m e4:m7.5- a:7   d1:m }
    }
    g:m7            c:7             f               f2:7+   f:6
    g1:m7           c:7             f2      af:dim  g:m7.5- f:6
    g1:m7           c:7             f               f2:7+    f:6
    gs1:dim         f4:7 ef:7 d2:7  g2:m7 c:7       f4. bf4:7 a:7
}

ukulele_changes = \guitar_changes

melody = \relative c'' {
    % \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \tempo  "Quick" 4 = 180
    \key f \major

    \repeat volta 2 {
        d4 cs d cs          | d cs8 c~ c c b b      | bf4 a bf a    | bf a8 g~ g g f f  | \break
        e8 bf'4 a8~ a4 r    | r8 e4 bf'8 a4 r8 a8~  |
    }
    \alternative {
                                                    { a8 d4 a8 \times 2/3 { f8 g gs } a8. f16   | d8 f d e~ e a4 r8 | \break } 
      { a8 d4 a8 g4 f8 d8~  | d2 d'4 \times 2/3 { ds,8 fs a } | }
    }
    \bar "||"
    \mark "Fine"

                                                      bf8 g4 bf8~ bf4 r8 g  | bf8 g bf g~ g c4 bf8  | \break
    a4 f a r8 f             | a f a f~ f d'4 c8     | bf4 g8 bf~ bf4 r8 g8  | bf g bf g~ g c4 bf8   | \break
    r8 c4 d8 f d4 f8        | df8 bf4 g8 f4 r       | bf8 g4 bf8~ bf4 r8 g  | bf g bf g~ g c4 bf8   | a4 f a r8 f   | \break
    a f a f~ f d'4 c8       | b4 gs8 f d f gs b     | c b bf a~ a e'4 d8    | c8 bf c bf a a4 f8~   | f4. bf4 a r8  |
    \bar "||"
    \override Score.RehearsalMark #'self-alignment-X = #RIGHT 
    \mark "D.C. al Fine"
}

verseI = \lyricmode {
}
verseII = \lyricmode {
}
