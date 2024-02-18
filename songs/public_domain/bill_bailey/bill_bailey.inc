\include "standard_header.ly"

title       = "Bill Bailey - F"
subtitle    = "Hughie Cannon - 1902"
subsubtitle = ""
% source_url  = \markup { \with-url #"http://creolejazzband.com/Fake%20Books" "source" }
% source_url  = \markup { \with-url #"http://cjam.lassecollin.se/songs2/bringmesunshine110408.html" "source" }
% source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Julius Yang" }
% listen_url  = \markup { \with-url #"http://www.youtube.com/watch?v=ob4Bu17zVJo" "listen" }
source_url = \markup { \with-url #"https://www.google.com/search?q=firehouse+jazz+band+fake+book&aq=0&oq=firehouse+jazz+band&aqs=chrome.1.64j0l3.6859j0&sourceid=chrome&ie=UTF-8" "Firehouse Jazz Band Fake Book" }

% chords_used_guitar_size = #'0.9
chords_used = \chordmode {
    d:m a:7 f ef:dim c:7 c:aug7 fs:dim f:7 bf b:dim d:7 g:7
}

changes = \chordmode {
    d1:m        s           s           a:7
    f           s           s2  a:7     d:m ef:dim
    c1:7        s2 c:aug7   f1          a:7
    d:m         s           s           a:7
    f           s           s2  a:7     d:m ef:dim
    c1:7        s2 c:aug7   f1          c:7
    
    f1          s           s           s
    f           s2 fs:dim   c1:7/g      c:7
    c:7         s           s           s
    c:7         s           f           s
    f           s           s           s
    f           f:7         bf          s
    bf          b:dim       f/c         d:7
    g:7         c:7         f           s
}
guitar_changes = \chordmode {
    d1:m        s           s           a:7
    f           s           s2  a:7     d:m ef:dim
    c1:7        s2 c:aug    f1          a:7
    d:m         s           s           a:7
    f           s           s2  a:7     d:m ef:dim
    c1:7        s2 c:aug    f1          c:7
    
    f1          s           s           s
    f           s2 fs:dim   c1:7        c:7
    c:7         s           s           s
    c:7         s           f           s
    f           s           s           s
    f           f:7         bf          s
    bf          b:dim       f           d:7
    g:7         c:7         f           s
}

ukulele_changes = \chordmode {
    d1:m        s           s           a:7
    f           s           s2  a:7     d:m ef:dim
    c1:7        s2 c:aug7   f1          a:7
    d:m         s           s           a:7
    f           s           s2  a:7     d:m ef:dim
    c1:7        s2 c:aug7   f1          c:7
    
    f1          s           s           s
    f           s2 fs:dim   c1:7        c:7
    c:7         s           s           s
    c:7         s           f           s
    f           s           s           s
    f           f:7         bf          s
    bf          b:dim       f           d:7
    g:7         c:7         f           s
}


melody = \relative c'' {
    % \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \tempo  "Easy" 4 = 140
    \key f \major

    \mark \markup { \box { Verse: } }
    a4 a a g        | f8 d8~ d2 f4  | a4 a a g  | a2. a4    | \break
    a4 c d8 c a4    | a4 c d8 c a4  | a4 a a a  | a4 c c c  | \break
    c4 e,2.~        | e4 c' c c     | c f,2.~   | f2. a4    | \break

    \mark \markup { \box { A } }

    a8 a a4 a8 a g4 | f4 d2 f4      | a4 a a g  | a1        | \break
    a4 c d8 c a4    | a4 c d8 c a[ a] | a4 a a a | a c c c  | \break
    c4 e,2.~        | e4 c' c c     | c f,2.~   | f2. r4    | \break

    \pageBreak
    
    \mark \markup { \box { "B, Chorus:" } }

    c4 d2 f4        | a4 gs a c     | c, d2 f4  | a1        | \break
    c,4 d2 f4       | a2 c          | c4 e,2.~  | e2. r4    | \break
    c4 e2 g4        | bf4 a bf c    | c, e2 g4  | bf2 r2    | \break
    c,4 e2 g4       | c2 d          | d4 a2.~   | a2. r4    | \break
    c,4 d2 f4       | a4 gs a c     | c,4 d2 f4 | a2. c,4   | \break
    c4 c f a        | c2 ef         | d1~       | d2. f,4   | \break
    f4 f2 f4        | g2 f2         | c'4 c2 d4 | a2. a4    | \break
    a4 g fs g       | bf2 a         | f1~       | f2. r4    | \break
    
    \bar "||" \break
}

verseI_barred = \lyricmode {
    On one sum -- mer       | morn -- in', the          | sun was shin -- in'   | fine, the         |
    la -- dy hon -- ey of   | old Bill Bail -- ey she   | hung clothes on the   | line in her back  |
    yard, ""                | and weep -- in'           | hard. ""              | She               |
    mar -- ried a B. & O.   | break -- man that         | took and throwed her  | down.             |
    Bell -- 'rin' like an old | prune -- fed calf an' with a | big gang hang -- in' | 'round, And to that |
    crowd, ""               | she cried out             | loud:  ""             |                   |
    
    Won't you come          | home, Bill Bail -- ey,    | won't you come        | home?             |
    She moans the           | whole day                 | long. ""              |                   |
    I'll do the             | cook -- in', dar -- lin', | I'll pay the          | rent,             |
    I know I've             | done you                  | wrong. ""             |                   |
    'Mem -- ber that        | rain -- y eve that        | I threw you           | out, with         |
    noth -- in' but a       | fine tooth                | comb?                 | I                 |
    know I'm to             | blame, well,              | ain't that a          | shame, Bill       |
    Bail -- ey won't you    | please come               | home?                 |                   |
}
verseII_barred = \lyricmode {
    Bill drove by that      | door, "" ""               | in an aut -- 'mo --   | bile, a           |
    great big di -- a -- mond, | coach and foot -- man to | hear that big wench | squeal. "\"He's" all a -- |
    "lone\"," ""            | I heard her               | groan. ""             | She               |
    hol -- lered righ through that old | screen door, "\"Bill" | Bail -- ey, are you | sore?          |
    Stop a min -- ute and   | lis -- ten to me, won't I | see you here no       | "more?\"" Bill winked his |
    eye ""                  | and heard her             | cry:                  |                   |
}

verseI = \lyricmode {
    On one sum -- mer         morn -- in', the            sun was shin -- in'     fine, the          
    la -- dy hon -- ey of     old Bill Bail -- ey she     hung clothes on the     line in her back   
    yard, ""                  and weep -- in'             hard. ""                She                
    mar -- ried a B. & O.     break -- man that           took and throwed her    down.              
    Bell -- 'rin' like an old   prune -- fed calf an' with a   big gang hang -- in'   'round, And to that  
    crowd, ""                 she cried out               loud:  ""                                  
    
    Won't you come            home, Bill Bail -- ey,      won't you come          home?              
    She moans the             whole day                   long. ""                                   
    I'll do the               cook -- in', dar -- lin',   I'll pay the            rent,              
    I know I've               done you                    wrong. ""                                  
    'Mem -- ber that          rain -- y eve that          I threw you             out, with          
    noth -- in' but a         fine tooth                  comb?                   I                  
    know I'm to               blame, well,                ain't that a            shame, Bill        
    Bail -- ey won't you      please come                 home?                                      
}
verseII = \lyricmode {
    Bill drove by that        door, "" ""                 in an aut -- 'mo --     bile, a            
    great big di -- a -- mond,   coach and foot -- man to   hear that big wench   squeal. "\"He's" all a --  
    "lone\"," ""              I heard her                 groan. ""               She                
    hol -- lered righ through that old   screen door, "\"Bill"   Bail -- ey, are you   sore?           
    Stop a min -- ute and     lis -- ten to me, won't I   see you here no         "more?\"" Bill winked his  
    eye ""                    and heard her               cry:                                       
}
