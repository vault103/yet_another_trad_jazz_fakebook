\include "standard_header.ly"

title       = "Down By The Riverside - F"
subtitle    = "African American Spiritual - 1918"
subsubtitle = ""
source_url  = "The Daily Ukulele"
listen_url  = \markup { \with-url #"http://www.youtube.com/watch?v=DVXReRfZCM8" "Listen: Mahalia Jackson" }

chords_used = \chordmode {
    f1 c:7 bf f:7
}

changes = \chordmode {
    s4  |
    \repeat volta 2 {
        f1  s   s   s
        c:7 s   f   s
        f   s   s   s
        c:7 s   f   f:7
        bf  s   f   s
        c:7 s
    }
    \alternative {
              { f   f:7 }
              { f   s }
    }
}

melody = \relative c'' {
    \time 4/4
    \tempo  "Lively" 4 = 180
    \key f \major
    \partial 4 a8 af \bar "|:"
    \repeat volta 2 {
        a!4 c,2 d4      | f8 f4 a8~ a2  | r4 a a4. af8  | a!8 g4 f8~ f2     | \break
        r4 g4 g4. gf8   | g!8 f4 e8~ e2 | r4 a a4. af8  | a!8 g4 f8~ f f g4 | \break
        a4 c,2 d4       | f8 f4 a8~ a2  | r4 a a4. af8  | a!8 g4 f8~ f4 f   | \break
        g8 g4.~( g4 \stemUp bf) | a2 g  | f1~           | f4 f g a8 a       |

        \bar "|:"
        bf8 bf4. bf4 bf | bf bf f g8 g  | a8 a4. a4 g   | f4 f e f8 f       | \break
        g8 g4.~( g4 \stemUp bf) | a2 g  |
        
    }
    \alternative {
                                        { a1~           | a4 f g a8 a       }
                                        { f1~           | f4 r4 r s         }
    }
    \bar "||" \break
}

verseI = \lyricmode {
%    \set stanza = #"1. "
    Gon -- na    |
    lay down my  | sword and shield __   | down by the   | riv -- er -- side, __             |
    down by the  | riv -- er -- side, __ | down by the   | riv -- er -- side. __  Gon -- na  |
    lay down my  | sword and shield __   | down by the   | riv -- er -- side, __ and         |
    stud -- y __ | war no                | more. __      | I ain't gon -- na                 |
    
    stud -- y war no | more, I ain't gon -- na   | stud -- y war no  | more I ain't gon -- na    |
    stud -- y __     | war no                    | more __           | I ain't gon -- na         |
                                                 | more. __          |
}

foo_verseII = \lyricmode {
    \set stanza = #"2. "
    I'm gonna       |
    join hands with | eve -- ry -- one,     | down by the   | riv -- er -- side, __             |
    down by the     | riv -- er -- side, __ | down by the   | riv -- er -- side. __  I'm gonna  |
    join hands with | eve -- ry -- one,     | down by the   | riv -- er -- side, __ and         |
    stud -- y __    | war no                | more. __      | I ain't gon -- na                 |
}

verseAlt = \markup {
  \fill-line {
    \hspace #0.1 % moves the column off the left margin;
        % can be removed if space on the page is tight
     \column {
      \line { \bold "2."
        \column {
          "Gonna stick my sword in the golden sand"
        }
      }
      \line { \bold "3."
        \column {
          "Gonna put on my long white robe"
        }
      }
    }
    \hspace #0.1  % adds horizontal spacing between columns;
        % if they are still too close, add more " " pairs
        % until the result looks good
     \column {
      \line { \bold "4."
        \column {
          "Gonna put on my starry crown"
        }
      }
      \line { \bold "5."
        \column {
          "Gonna shake hands around the world"
        }
      }
    }
  \hspace #0.1 % gives some extra space on the right margin;
      % can be removed if page space is tight
  }
}
