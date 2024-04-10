\include "standard_header.ly"

title       = "Limehouse Blues - F-Ab"
subtitle    = "Music by Philip Braham, words by - Douglas Furber - 1922"
subsubtitle = ""
source_url  = \markup { \with-url #"http://creolejazzband.com/Fake%20Books" "source" }
% source_url  = \markup { \with-url #"http://cjam.lassecollin.se/songs2/bringmesunshine110408.html" "source" }
% source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Julius Yang" }
% listen_url  = \markup { \with-url #"http://www.youtube.com/watch?v=ob4Bu17zVJo" "listen" }

% chords_used_guitar_size = #'0.6
%chords_used = \chordmode {
%    f ef a:m e:7 c:7 f:7 bf a:7 d:m df bf:m7 ef:7 af:7
%}
%chords_used_b = \chordmode {
%    df:7 b:7 bf:7 af f:m7 bf:m bf:m7.5-
%}

changes_verse_creole = \chordmode {
    f1  s   ef  f
    f   ef  f   s
    a:m s   e:7 a:m
    a:m e:7 a:m c:7
    f:7 s   bf  s
    a:7 s   d:m df
    f   s   ef  f
    f   ef  f2 bf:m7 ef:7 af:7
}
changes_chorus_creole = \chordmode {
    df1:7       s           s           df2:7 c4:7 b:7
    bf1:7       s           s           s
    af          s           c:7         f:m7
    bf:7        s           ef:7        s2 af:7

    df1:7       s           s           df2:7 c4:7 b:7
    bf1:7       s           s           s
    af          f:7         bf2:m   f:7 bf1:m
    bf1:dim7    ef:7        af          s
}

% In G
changes_chorus_uhc = \chordmode {
    c1:7        s           s           s
    a:7         s           s           s
    g:6.9       s           b:7         e:m7
    a:7         s           a:m7        d2:7 df:7
    
    c1:7        s           s           s
    a:7         s           s           s
    g:6.9       e:7         a:m7        s
    a:dim7      d:7         g:6.9       s
}

changes = \chordmode {
    \changes_verse_creole
    \changes_chorus_creole
}

melody = \relative c' {
    % \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    % \tempo  "Easy" 4 = 140
    \key f \major

    % Total kludge to get stanza lyrics to align properly
    <<
        {
            \voiceOne
            \hideNotes
            a'1 | a |
            \unHideNotes
        }
        \new Voice {
            \voiceTwo
            a1~ | a |
        }
    >>
    \oneVoice
    
                            | g             | a     | 
    r4 a g a    | g a g a   | c1~           | c     | \break
    c1~         | c         | b             | c     | 
    r4 c b c    | b c b c   | e1~           | e     | \break

    e1          | d         | c4 bf a g~    | g1    | 
    r4 a2 e4    | a af g f~ | f1~           | f     | \break
    a1~         | a         | g             | a     | 
    r4 a g a    | g a g a   | f r af2       | g2 gf |

    \bar "||"
    \key af \major

    \pageBreak

    \bar "|:"

    f4 g af f~  | f g2 af4  | f g af f~     | f1        | \break
    f4 g af f~  | f g2 af4  | f g af f~     | f1        | \break
    ef4 f g af~ | af bf2 b4 | c b bf af~    | af1       | \break
    f4 g af a~  | a bf2 c4  | bf4 a af g~   | g gf2 f4  | \break
    f4 g af f~  | f g2 af4  | f g af f~     | f1        | \break
    f4 g af f~  | f g2 af4  | f g af f~     | f1        | \break
    ef'4 d ef f~ | f ef2 c4 | df c df bf~   | bf1       | \break
    df4 c df ef~ | ef c2 bf4 | af2 af4 af   | af2. r4   | \break
}
verseI = \lyricmode {
    In __ ""            |                           | Lime --                   | house     |
    Where yel -- low    | Chin -- kies love to      | play, __                  |           |
    In __               |                           | Lime --                   | house,    |
    Where you can       | hear those blues all      | day, __                   |           |
    
    And                 | they                      | seam all a -- round, __   |           |
    Like a              | long, "" long sigh. __    |                           |           |
    Queer __            |                           | sob                       | sound,    |
    Oh, Hon -- ey       | lamb they seem to         | say: ""                   | "" ""     |


    Oh! Lime -- house kid __    | Oh! Oh!           | Oh! Lime -- house kid. __     |           |
    Go -- ing the way __        | That the          | rest of them did __           |           |
    Poor bro -- ken blos --     | som and           | no -- bod -- y's child, __    |           |
    Haunt -- ing and taunt --   | ing you're        | just kind o' wild. __         | Oh! Oh!   |
    Oh! Lime -- house blues __  | I've the          | real Lime -- house blues, __  |           |
    Learned from the chink __   | ies __ those      | sad Chin -- a blues, __       |           |
    Rings on your fin --        | gers and          | tears for your crown, __      |           |
    That is the sto --          | ry of             | old Chin -- a                 | town.     |
}

verseII = \lyricmode { 
    Oh                  | Dear                      | Oh                        | Dear,1    |
    Right here in       | or -- ange blos -- som    | land, __                  |           |
    I'm __              |                           | wear --                   | y         |
    'Cause no one       | seams to un -- der --     | stand. __                 |           |
    
    And                 | Those                     | weird Chi -- na blues, __ |           |
    Nev -- er           | go __ a -- way. __        |                           |           |
    Sad, __             |                           | mad                       | blues,    |
    For all the         | while they seem to        | say: ""                   | "" ""     |
}
