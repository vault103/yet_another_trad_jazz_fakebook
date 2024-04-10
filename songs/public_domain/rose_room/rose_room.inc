\include "standard_header.ly"

title       = "Rose Room - Ab"
subtitle    = "Harry Wiliams and Art Hickman - 1917"
subsubtitle = ""
% source_url  = \markup { \with-url #"http://creolejazzband.com/Fake%20Books" "source" }
% source_url  = \markup { \with-url #"http://cjam.lassecollin.se/songs2/bringmesunshine110408.html" "source" }
% source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Julius Yang" }
% listen_url  = \markup { \with-url #"http://www.youtube.com/watch?v=ob4Bu17zVJo" "listen" }

% chords_used_guitar_size = #'0.9
chords_used = \chordmode {
    bf:7 ef:7 af af:7 df df:m f:7
}

changes = \chordmode {
    s2.
    bf1:7       ef:7        af          s
    af:7        s           df          s
    
    df:m        s           af          f:7
    bf:7        s           ef:7        s
    
    bf:7        ef:7        af          s
    af:7        s           df          s
    
    df:m        s           af          f:7
    bf:7        ef:7        af          s
}

changes_uhc = \chordmode {
    s2.
    g1:7        c:7         f           s
    c:m7        f:7         bf          s
    bf:m        ef:7        f/a         d:7
    g:7         s           g:m7        c:7
    
    g:7         c:7         f           s
    c:m7        f:7         bf          s
    bf:m7       ef:7        f/a         d:7
    g:7         c:7         f           a2:m7 d:7
}

melody = \relative c' {
    % \set Staff.timeSignatureFraction = #'(2 . 2)
    \time 4/4
    \tempo  "Easy" 4 = 140
    \key af \major
    \partial 2. ef4 ef e | \bar "|:"
    
    f4. c'8~ c2     | r8 ef, f fs g c4 g8   | 
                                            % Total hack to align lyrics properly
                                              <<
                                              {
                                                  \voiceOne
                                                  \hideNotes
                                                  bf1 | af |
                                                  \unHideNotes
                                              }
                                              \new Voice {
                                                  \voiceTwo
                                                  bf1( | af) |
                                              }
                                              >>
                                              \oneVoice
                                              \break

    af1             | r8 af bf b c ef4 c8   |
                                            <<
                                            {
                                                \voiceOne
                                                \hideNotes
                                                ef1 | df |
                                                \unHideNotes
                                            }
                                            \new Voice {
                                                \voiceTwo
                                                ef1( | df) |
                                            }
                                            >>
                                            \oneVoice
                                            \break
    
    df1~        | df4 af8 bf df af bf c~    |
                                            <<
                                            {
                                                \voiceOne
                                                \hideNotes
                                                c1 | ef |
                                                \unHideNotes
                                            }
                                            \new Voice {
                                                \voiceTwo
                                                c1( | ef,1) |
                                            }
                                            >>
                                            \oneVoice
                                            \break

    d2 d2~      | d4 f8 g af bf c bf~   | bf1~  | bf4 ef, ef e  | \break

    f4. c'8~ c2     | r8 ef, f fs g c4 g8   | 
                                            % Total hack to align lyrics properly
                                              <<
                                              {
                                                  \voiceOne
                                                  \hideNotes
                                                  bf1 | af |
                                                  \unHideNotes
                                              }
                                              \new Voice {
                                                  \voiceTwo
                                                  bf1( | af) |
                                              }
                                              >>
                                              \oneVoice
                                              \break
    af1             | r8 af bf b c ef4 c8   |
                                            <<
                                            {
                                                \voiceOne
                                                \hideNotes
                                                ef1 | df |
                                                \unHideNotes
                                            }
                                            \new Voice {
                                                \voiceTwo
                                                ef1( | df) |
                                            }
                                            >>
                                            \oneVoice
                                            \break

    df4. df8~ df2~  | df4 af8 bf df af bf c~    |
                                            <<
                                            {
                                                \voiceOne
                                                \hideNotes
                                                c1 | ef4
                                                \unHideNotes
                                            }
                                            \new Voice {
                                                \voiceTwo
                                                c1( | ef4)
                                            }
                                            >>
                                            \oneVoice
                                                ef,4 ef e           | \break

    f4. c'8~ c2 | r8 ef, f fs g ef'4 c8 | af1~      | af4 ef ef e   |

    
    
    \bar ":|" \break
}

verseI = \lyricmode {
    In sun -- ny    |
    Rose -- land,   | where sum -- mer breez -- es are  | play --       | ing,                  |
    Where           | the hon -- ey bees are "\"A"      | May --        | "ing.\""              |
    There __        | all the ros -- es are sway --     |               | ing,                  |
    Danc -- ing __  | while the mead -- ow brook flows. |               | The moon when         |

    shin -- ing, __ | is more then ev -- er de --       | sign --       | ing.                  |
    For             | 'tis ev -- er then I am           | pin --        | ing,                  |
    Pin -- ing __   | to be sweet -- ly re -- clin --   |               | ing, Some -- where in |
    Rose -- land, __ | Be -- side a beau -- ti -- ful   | rose.         |                       |
    
}
