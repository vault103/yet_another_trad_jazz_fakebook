\version "2.16.0"
\include "standard_header.ly"

title       = "After You've Gone - C"
subtitle    = "music by Turner Layton, words by Henry Creamer - 1918"
source_url  = \markup {
    \fontsize #-2
    \column {
        Sources:
        \with-url #"https://plus.google.com/103014127618871376893/posts" "Julius Yang's Jam Book,"
        "The Daily Ukulele,"
        \with-url #"http://creolejazzband.com/Fake%20Books" "and the Creole Jazz Band Fake Book"
    }
}

chords_used = \chordmode {
    c g:7 e:7 a:m7 a:7 c:7 d:m7 e:m f:7 d:m
    f f:m d:7 a:m
}

changes = \chordmode {
%    \key c \major

    c1          g:7             c
    g:7         e:7             a:m7        g2:7    a4:7 c:7    d2:m7   g2:7
    c1          g:7             e2:m        a:7
    f1:7        c2:7    a:m7    d:m     g:7 d:m7    g:7         c1

    \repeat volta 2 {
        f1      f1:m    c       a:7
        d:7     g:7     c2 g:7  c c:7
        f1      f:m     c       a:7
        d2:m    a:7     d:m     f:m
        c       e:7     a:m     d:7
        c1      g:7     c
    }
    \alternative {
        { c:7 }
        { c }
    }
}

melody = \relative c' {
    \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \key c \major
    \tempo  "Easy" 4 = 140

    % Intro
    \mark \markup { \box { \bold "A" } }
    r8 g' a c g a c a   | d4 e8 d4. r4          | r8 g, a c g a c a | \break
    d4 e8 d4. r4        | r8 e4. ef8 d4.        | c8 a \times 2/3 { b bf a~ } a2    | r4 d8 d cs c~ c4  | b8 c cs d8~ d2    | \break
    g,8 a c g a c a c   | d4 cs8 d4. r4         | d8 e4 d8 cs c bf g | \break
    a1                  | r8 a b[ c] a b c d    | e8 c4. g2         | a8 a4. b8 e4. | c2. r4            | \break

    \pageBreak

    \repeat volta 2 {
        \mark \markup { \box { \bold "B" } }
        a8 c d e~ e2        |  r8 d e d e d4.               | e,8 g a b~ b2         | \break
        r8 a b[ a] b a4.    | a8 e'4 e8~ e2                 | a,8 d4 d8~ d2         | \break
        r8 g, a[ g] b g a g | c8 e,4 g8~ g2                 | a8 c d e~ e2          | \break
        r8 d e[ d] e d4.    | e,8 g a b~ b2                 | r8 a b[ a] b a4.      | \break
        f'2 e               | d8 gs, a e'~ e4 d             | r8 ds e[ c] d cs d b  | \break
        a8 ds, e b'~ b4 a   | g8 a c e~ e2                  | r8 f, g[ b] d4 e\(  | c1\)  |
    }
    \alternative {
        {
            r1_\markup {
                \box {
                    \bold "Solos at \"B\""
                }
            }
        }
        { c2\repeatTie r2 }
    }
    \bar "||"
}

verseI_breaks = \lyricmode {
    Now won't you list -- en hon -- ey      | while I say       | How could you tell me that you're |
    goin' a -- way? | Don't say that        | we _ must _ part, | Don't you break your              | ba _ by's heart.  |
    You know that I've love you for these   | ma -- ny years,   | Love you both night _ and _       | Day.              |
    Oh hon -- ey ba -- by can't you         | see my tears?     | List -- en while I                | say.              |

    Af -- ter you've gone, __   | and left me cry -- ing.   | Af -- ter you've gone __                  | there's no den -- y -- ing    |
    you'll feel blue __         | you'll feel sad __        | you'll miss the dear -- est pal you've    | e -- ver had __               |
    They'll come a time, __     | now don't for -- get it.  | They'll come a time, __                   | when you'll re -- gret it.    |
    Some day                    | when you get lone -- ly,  | your heart will break like mine and       | you'll want me on -- ly.      |
    Af -- ter you've gone __    | af -- ter you've gone a -- | way
}
verseII_breaks = \lyricmode {
    ""  ""    ""  ""      "" ""     ""      | ""    "" ""       | ""  ""    ""  ""   "" ""   ""     |
    ""    ""   ""   | ""    ""  ""          | "" _ "" _   ""    | ""    ""  ""    ""                | "" _ ""   ""      |
    ""  ""   ""   ""   ""   ""  ""  ""      | ""    "" ""       | ""   ""  ""   "" _    "" _        | ""                |
    "" ""     "" ""    "" ""    ""          | ""  "" ""         | ""      "" ""    ""               | ""                |

    Af -- ter I'm gone, __      | af -- ter we break up.    | Af -- ter I'm gone __                     | you're gon -- na wake up...   |
    you will find __            | you were blind __         | to let some -- bod -- y come and          | change your mind. __          |
    Af -- ter the years __      | we've been to -- geth -- er, | their joy and tears, __                 | all kinds of weath -- er.     |
    Some day                    | blue and down -- heart -- ed | you'll long to be with me __ right     | back where you start -- ed,   |
    af -- ter I'm gone, __      | af -- ter I'm gone a --   | way.
}

verseI = \lyricmode {
    Now won't you list -- en hon -- ey        while I say         How could you tell me that you're  
    goin' a -- way?   Don't say that          we _ must _ part,   Don't you break your                ba _ by's heart.   
    You know that I've love you for these     ma -- ny years,     Love you both night _ and _         Day.               
    Oh hon -- ey ba -- by can't you           see my tears?       List -- en while I                  say.               

    Af -- ter you've gone, __     and left me cry -- ing.     Af -- ter you've gone __                    there's no den -- y -- ing     
    you'll feel blue __           you'll feel sad __          you'll miss the dear -- est pal you've      e -- ver had __                
    They'll come a time, __       now don't for -- get it.    They'll come a time, __                     when you'll re -- gret it.     
    Some day                      when you get lone -- ly,    your heart will break like mine and         you'll want me on -- ly.       
    Af -- ter you've gone __      af -- ter you've gone a --   way
}
verseII = \lyricmode {
    ""  ""    ""  ""      "" ""     ""        ""    "" ""         ""  ""    ""  ""   "" ""   ""      
    ""    ""   ""     ""    ""  ""            "" _ "" _   ""      ""    ""  ""    ""                  "" _ ""   ""       
    ""  ""   ""   ""   ""   ""  ""  ""        ""    "" ""         ""   ""  ""   "" _    "" _          ""                 
    "" ""     "" ""    "" ""    ""            ""  "" ""           ""      "" ""    ""                 ""                 

    Af -- ter I'm gone, __        af -- ter we break up.      Af -- ter I'm gone __                       you're gon -- na wake up...    
    you will find __              you were blind __           to let some -- bod -- y come and            change your mind. __           
    Af -- ter the years __        we've been to -- geth -- er,   their joy and tears, __                   all kinds of weath -- er.      
    Some day                      blue and down -- heart -- ed   you'll long to be with me __ right       back where you start -- ed,    
    af -- ter I'm gone, __        af -- ter I'm gone a --     way.
}
