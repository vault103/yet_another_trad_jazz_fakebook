\version "2.19.82"
\include "standard_header.ly"

title       = "Crazy Rhythm - F"
subtitle    = "Writen by Irving Caesar, Joseph Meyer, and Roger Wolfe Kahn - 1928"
source_url  = \markup { \with-url #"https://plus.google.com/103014127618871376893/posts" "Source: Julius Yang's Jam Book" }

chords_used = \chordmode {
    f:6         f:dim7      g:m7        c:7
    f           c:m7        f:7         bf:7
    bf          bf:m6       d:7         g:7
}

guitar_chords = \chordmode {
    f:6         f:dim       g:m7        c:7
    f           c:m7        f:7         bf:7
    bf          bf:m6       d:7         g:7
}

changes = \chordmode {
%    \key f \major
    f1:6        s       s       f:dim7
    g:m7        c:7     f       g2:m7   c:7
    f1:6        s       s       f:dim7
    g:m7        c:7     f:6     s
    c:m7        f:7     bf:7    bf
    bf:m6       s       d:7     c:7
    f:6         s       g:7     s
    g:m7        c:7     f:6     f2:6    c:7
}

guitar_changes = \chordmode {
%    \key f \major
    f1:6        s       s       f:dim
    g:m7        c:7     f       g2:m7   c:7
    f1:6        s       s       f:dim
    g:m7        c:7     f:6     s
    c:m7        f:7     bf:7    bf
    bf:m6       s       d:7     c:7
    f:6         s       g:7     s
    g:m7        c:7     f:6     f2:6    c:7
}

melody = \relative c'' {
    \time 4/4
    \tempo  "Easy" 4 = 140
    \key f \major
    r8 g4 g8 f4 f   | e4 e8 f4 f r8     | r8 g4 g8 f4 f     | e4 e8 f4 f r8 | \break
    r8 g4 g8 f4 f   | e4. e8 f4 g       | f1~               | f2 r2         | \break
    r8 g4 g8 f4 f   | e4 e8 f4 f r8     | r8 g4 g8 f4 f     | e4 e8 f4 f r8 | \break
    r8 g4 g8 f4 f   | e4. e8 f4 g       | f1                | r4 g a bf8 r8 | \break
    r8 c4 c8 bf4 bf | a a bf c          | c8 bf4 c bf8 a4   | g2. r4        | \break
    r8 bf4 bf8 a4 a | g g a bf8 r8      | bf8 a4 bf8 a4. r8 | a8 g4 a8 g4. r8 | \break
    r8 g4 g8 f4 f   | e4 e8 f4 f r8     | r8 a4 a8 g4 g     | gf4 gf8 g4 g r8 | \break
    r8 d'4 d8 c4 c  | b4 b c a          | f1~               | f2 r2
    \bar "||" \break
}

verseI = \lyricmode {
    Cra -- zy rhy -- thm    | here's the door way       | I'll go my way                | you'll go your way    |
    Cra -- zy rhy -- thm    | from now on we're         | through. __                   |                       |
    Here is where we        | have a show -- down       | I'm too high hat              | you're too low down   |
    Cra -- zy rhy -- thm    | here's good -- bye to     | you!                          | They say that         |
    when a high -- brow     | meets a low -- brow       | walk -- ing a -- long broad -- | way                  |
    Soon the high -- brow   | he has no brow            | Ain't it a -- shame?          | And you're to blame   |
    What's the use of       | pro -- hi -- bi -- tion?  | You pro -- duce the           | same con -- di -- tion |
    Cra -- zy rhy -- thm    | from now __ "" we're      | through. __                   |
}
verseII = \lyricmode {
}

\include "standard_parts.ly"
