\version "2.19.82"
\include "standard_header.ly"

title       = "Ain't She Sweet - F"
subtitle    = "Music by Milton Ager, words by Jack Yellen - 1927"
source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Source: Julius Yang's Jam Book" }

chords_used = \chordmode {
    f2      b:9     c:7     b:9     a:7     d:7     g:13    c:9
    f:6     c:13    b:9     f:7     bf:7    g:m7
}

guitar_chords = \chordmode {
    f2      b:7     c:7     b:7     a:7     d:7     g:7    c:7
    f:6     c:7     b:7     f:7     bf:7    g:m7
}

changes = \chordmode {
%    \key f \major
    f2      b:9     c1:7            f2      b:9     c1:7
    f2      a:7     d1:7            g2:13   c:9     f:6     c:13
    f       b:9     c1:7            f2      b:9     c1:7
    f2      a:7     d1:7            g2:13   c:9     f:6     f:7
    bf1:7           bf:7            f               f:7
    bf1:7           bf:7            f               g2:m7   c:13
    f2      b:9     c1:7            f2      b:9     c1:7
    f2      a:7     d1:7            g2:13   c:9     f       c:7
}

guitar_changes = \chordmode {
%    \key f \major
    f2      b:7     c1:7            f2      b:7     c1:7
    f2      a:7     d1:7            g2:7    c:7     f:6     c:7
    f       b:7     c1:7            f2      b:7     c1:7
    f2      a:7     d1:7            g2:7    c:7     f:6     f:7
    bf1:7           bf:7            f               f:7
    bf1:7           bf:7            f               g2:m7   c:7
    f2      b:7     c1:7            f2      b:7     c1:7
    f2      a:7     d1:7            g2:7    c:7     f       c:7
}

melody = \relative c'' {
    \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \tempo  "Medium Swing" 4 = 160
    \key f \major
    
    d2 cs       | c2 r8 d4 c8           | d4 d cs cs    | c2 r8 d4 c8       | \break
    f4 f e e    | d4 d8~ d8 c bf4 bf8   | a2 g2         | f2 r2             | \break
    d'2 cs      | c2 r8 d4 c8           | d4 d cs cs    | c2 r8 d4 c8       | \break
    f4 f e e    | d4 d8~ d8 c bf4 bf8   | a2 g2         | f4 f' f8 f4 f8~   | \break
    f1~         | f4 f f f              | f2 c2~        | c4 f f8 f4 f8~    | \break
    f1~         | f4 f f f              | f2 c2~        | c2. r4            | \break
    d2 cs       | c2 r8 d4 c8           | d4 d cs cs    | c2 r8 d4 c8       | \break
    f4 f e e    | d4 d8~ d8 c bf4 bf8   | a2 g2         | f2 r2             | \break
}

verseI_barred = \lyricmode {
    Ain't she           | sweet.  See her                   | com -- ing down the   | street.  Now I            |
    ask you ver -- y    | con -- fi -- den -- tial -- ly    | ain't she             | sweet?                    |
    Ain't she           | nice.  Look her                   | o -- ver once or      | twice.  Now I             |
    ask you ver -- y    | con -- fi -- den -- tial -- ly    | ain't she             | nice?  Just cast an eye __ |
                        | in her di --                      | rec -- tion. __       | Oh me, oh my __           |
                        | ain't that per --                 | fec -- tion? __       |                           |
    I re --             | peat.  Don't you                  | think that's kind of  | neat?  And I              |
    ask you ver -- y    | con -- fi -- den -- tial -- ly    | ain't she             | sweet?                    |
}
verseI = \lyricmode {
    Ain't she             sweet.  See her                     com -- ing down the     street.  Now I             
    ask you ver -- y      con -- fi -- den -- tial -- ly      ain't she               sweet?                     
    Ain't she             nice.  Look her                     o -- ver once or        twice.  Now I              
    ask you ver -- y      con -- fi -- den -- tial -- ly      ain't she               nice?  Just cast an eye __  
                          in her di --                        rec -- tion. __         Oh me, oh my __            
                          ain't that per --                   fec -- tion? __                                    
    I re --               peat.  Don't you                    think that's kind of    neat?  And I               
    ask you ver -- y      con -- fi -- den -- tial -- ly      ain't she               sweet?                     
}
