\include "standard_header.ly"

title       = "Avalon - F"
subtitle    = "Al Jolson, Buddy DeSylva and Vincent Rose - 1920"
subsubtitle = ""
source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Source: Julius Yang's Jam Book" }
% http://en.wikisource.org/wiki/Avalon

% The intro section came from the Daily Ukulele book which has the song in
% the key of C, where the default is the key of F.  That's why we have a/b
% chords and partial transpositions.

chords_a_in_key_of_c = \chordmode {
    c:6     d:7     g:7     c:7
}

chords_a = \chordmode {
    f:6     g:7     c:7     f:7
}

chords_b = \chordmode {
    d:7     g:m6    bf:dim  g:m7
}

chords_used = {
    \chords_a
    \chords_b
}

% From The Daily Ukulele
changes_a_in_key_of_c = \chordmode {
    c1:6        d2:7    g:7     c1:6            s
    c1:6        d:7             g:7             s
    g:7         s               c:7             d:7
    d:7         s               g:7             s
}

changes_a = \chordmode {
    f1:6        g2:7    c:7     f1:6            s
    f1:6        g:7             c:7             s
    c:7         s               f:7             g:7
    g:7         s               c:7             s
}

julius_changes = \chordmode {
%    \key f \major
    s2
    c1:7    g:m7    c:7     s
    f       s2 c:7  f1      s
    c:7     g:m7    c:7     s
    f       s2 c:7  f1      s
    d:7     a:m7    d:7     s
    g:m     s       c:7     s
    f       a:m7    d:7     s
    g:m7    c:7     f       s
}

jonathan_changes = \chordmode {
%    \key f \major
    s2
    c1:7    s               s           s
    f:6     s               s           s
    c:7     s               s           s
    f:6     s               s           s
    d:7     s               s           s
    g:m6    s2      d:7     bf1:dim     s
    f:6     s               d:7         s
    g:m7    c:7             f:6         s
}

changes = {
%    \transpose c f \changes_a
    \changes_a
    \jonathan_changes
}

jonathan_guitar_changes = \chordmode {
    \key f \major
    s2
    c1:7    s               s           s
    f:6     s               s           s
    c:7     s               s           s
    f:6     s               s           s
    d:7     s               s           s
    g,,:m6  s2      d:7     bf1:dim     s
    f:6     s               d'':7       s
    g:m7    c:7             f:6         s
}

guitar_changes_a_in_key_of_c = \chordmode {
    c1:6        d2:7    g:7     c1:6            s
    c1:6        d:7             g:7             s
    g:7         s               c:7             d:7
    d:7         s               g:7             s
}

guitar_changes_a = \chordmode {
    f1:6        g2:7    c:7     f1:6            s
    f1:6        g:7             c:7             s
    c:7         s               f:7             g:7
    g:7         s               c:7             s
}

guitar_changes = {
    \guitar_changes_a
    \jonathan_guitar_changes
}

% From The Daily Ukulele
melody_a_in_key_of_c = \relative c'' {
    g2 e2       | d4 c a g      | e'1(          | c4) d e f     | \break
    g2 e        | d4 c a cf     | d1~           | d4 r r2       | \break
    r4 f e f    | e8 f e2 d4    | r4 e d e      | d8 e d2 c4    | \break
    r4 c b c    | b8 c b2 a4    | d1~           | d4 r2.  \bar "||"
}


%    \partial 2 c2 \bar "||"
% From Julius Yang's Jam Book
melody_b = \relative c' {
    \partial 2 c2 \bar "||"
    g'2 a2      | bf2 c     | bf4 a g2~     | g2 c,     | \break
    f1~         | f2 g2     | a1~           | a2 c,     | \break
    e2 f        | g f       | e4 d c2~      | c2 d      | \break
    a'1~        | a2 d,     | a'1~          | a2 d,     | \break
    a'2 bf2     | c d       | c4 bf a2~     | a2 d,     | \break
    g1~         | g2 a      | bf1~          | bf4 r d,2 | \break
    c2 f        | a c       | e4 d e2~      | e4 r d2   | \break
    bf1         | a         | f~            | f2 r2
    \bar "||" \break
}

melody = {
    \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \tempo "Very uptempo" 4 = 270
    \key f \major
    \transpose c f \melody_a_in_key_of_c
    \pageBreak
    \melody_b
}

fooverseI = \lyricmode {
    Ev -- 'ry           | morn -- ing mem -- 'ries  | stray, __         |  a -- cross the       |
    sea where           | fly -- ing fish -- es     | play. __          |                       |
    And as the          | night is fall -- ing,     | I find that       | I'm re -- call -- ing |
    that bliss -- ful   | all en -- thrall -- ing   | day __            | I                     |

    found my    | love in       | Av -- a -- lon __ | be -- |
    side __     | the           | bay __            | I     |
    left my     | love in       | Av -- a -- lon __ | and   |
    sailed __   | a --          | way __            | and   |
    now I       | dream of      | Av -- a -- lon __ | each  |
    night __    | each          | day __            | and   |
    so I        | think I'll    | tra -- vel on __  | to    |
    Av __       | a __          | lon __            |       |
}
fooverseII = \lyricmode {
    Just be --          | fore I sailed a --        | way,  __          | she said the          |
    word I              | longed to hear her        | say. __           |                       |
    I ten -- der --     | ly ca -- ressed her       | close to my       | heart, I pressed her  |
    up -- on that       | gold -- en yes -- ter --  | day. __           |                       |
}

verseI = \lyricmode {
    Ev -- 'ry             morn -- ing mem -- 'ries    stray, __            a -- cross the        
    sea where             fly -- ing fish -- es       play. __                                   
    And as the            night is fall -- ing,       I find that         I'm re -- call -- ing  
    that bliss -- ful     all en -- thrall -- ing     day __              I                      

    found my      love in         Av -- a -- lon __   be --  
    side __       the             bay __              I      
    left my       love in         Av -- a -- lon __   and    
    sailed __     a --            way __              and    
    now I         dream of        Av -- a -- lon __   each   
    night __      each            day __              and    
    so I          think I'll      tra -- vel on __    to     
    Av __         a __            lon __                     
}
verseII = \lyricmode {
    Just be --            fore I sailed a --          way,  __            she said the           
    word I                longed to hear her          say. __                                    
    I ten -- der --       ly ca -- ressed her         close to my         heart, I pressed her   
    up -- on that         gold -- en yes -- ter --    day. __                                    
}
