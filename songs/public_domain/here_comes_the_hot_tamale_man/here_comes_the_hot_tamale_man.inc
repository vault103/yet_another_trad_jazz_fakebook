\include "standard_header.ly"

title       = "Here Comes The Hot Tamale Man - Eb"
subtitle    = "Fred Rose & Charlie Harrison"
subsubtitle = "1926"
% source_url  = \markup { \with-url #"http://creolejazzband.com/Fake%20Books" "source" }
% source_url  = \markup { \with-url #"http://cjam.lassecollin.se/songs2/bringmesunshine110408.html" "source" }
% source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Julius Yang" }
% listen_url  = \markup { \with-url #"http://www.youtube.com/watch?v=ob4Bu17zVJo" "listen" }
source_url  = \markup { \with-url #"http://www.sdjazzfest.org/index.php?id=jazzcamp" "San Diego Trad Jazz Camp" }

% chords_used_guitar_size = #'0.9
chords_used = \chordmode {
}

changes = \chordmode {
    s4
    ef1             d:7             g:7             c:7
    f:7             bf:7            ef2. gf4:dim    bf1:7
    ef              d:7             g:7             c:7
    f:7             bf:7            ef              s
    ef:7            s               af:7            s
    f:7             s               f:m6/af         bf:7
    ef              d:7             g:7             c:7
    f:7             bf:7

    \set Score.repeatCommands = #'((volta ""))
                                    ef              s
    \set Score.repeatCommands = #'((volta #f) (volta "TO VERSE") end-repeat)
                                    ef2. af4:7       g1:7
    \set Score.repeatCommands = #'((volta #f))
    
    c2:m    af:7    c2:m af4:7 bf:7 ef af ef bf:7   c1:7
    f1:7            bf:7            s               ef
    c2:m af4:7 bf:7 c2:m af4:7 bf:7 ef af ef bf:7   c1:7
    bf2 bf:aug      g:m b:dim       c:m     f:7     bf1:7
}

melody = \relative c' {
    \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \key ef \major

    \partial 4
    \hideNotes
    r4^Chorus
    \unHideNotes
     \bar "|:"

    r4 ef' ef f | d d d a           | r4 d d ef     | c c c g   | \break
    r4 ef' ef c | bf4 c8 gf~ gf4 f  | ef4 r4 r2     | r1        | \break
    r4 ef' ef f | d d d a           | r d8 cs d4 ef | c? c c g  | \break
    r4 ef' ef c | bf c8 gf~ gf4 f   | ef r r2       | r1        | \break

    ef4 g bf c  | df8 c4 bf8~ bf fs g4  |   ef4 r8 ef8~ ef4 r   | ef4 r8 ef~ ef4 r  | \break
    f4 a c d    | ef8 d4 c8~ c4 d4      | f,4 r8 f~ f4 r        | f4 r8 f~ f4 r     | \break
    r4 ef' ef f | d d d a   | d d d ef  | c c c g   | r ef' ef c | bf c8 gf~ gf4 f  | \break
    
    
    \repeat unfold 7 { r1 | r1 | r1 | r1 | \break }
    r1 | r1 | r1 | r1 | r1 | r1 | \break
    \repeat unfold 4 { r1 | r1 | r1 | r1 | \break }

    \bar "||" \break
}

melody_bass_include = ##t
melody_bass = \relative c' {
    \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \key ef \major

    \partial 4
    \hideNotes
    r4
    \unHideNotes
    \bar "|:"
    ef4 r c r   | a r d r       | g r g r       | c, r c r  |
    f r f r     | bf, r bf r    | ef r g gf     | f r bf, r |
    ef r c r    | a r d r       | g r g r       | c, r c r  |
    f r f r     | bf, r bf r    | ef r bf r     | ef r bf r |
    
    ef4 r ef r  | g, r ef' r    | af^"optional Charleston ---------------------" r ef r | af r ef r |
    f r f r     | c r f r       | af^"optional Charleston ---------------------" r af r | bf r bf, r |
    ef r c r    | a r d r       | g r g r       | c, r c r  | f r f r   | bf, r bf r |

    
    ef r g gf   | f r bf r      
    
    
    
    
}

verseI = \lyricmode {
}
