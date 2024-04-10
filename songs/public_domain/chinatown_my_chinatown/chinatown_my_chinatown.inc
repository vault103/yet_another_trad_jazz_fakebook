\include "standard_header.ly"

title       = "Chinatown, My Chinatown - G"
subtitle    = "Words by William Jerome, music by Jean Schwartz - 1910"
subsubtitle = ""
source_url  = "Source: The Daily Ukulele"
listen_url  = \markup { \with-url #"https://www.youtube.com/watch?v=7lTR2JKZuf8" "Listen: Chet Atkins" }

chords_used = \chordmode {
    c e:m g:7 d:m7 a:m d:m d:7 g:aug7 e:7 c:aug7 f a:7 f:m6 g:m6 cs:dim
}

changes = \chordmode {
    c2      s       e:m     s
    c       s       e:m     g:7
    c       s       e:m     s
    d4:m7 a:m g2:7  c       s
    d:m     s       s       s
    d:7     s       g:7     g4:7 g:aug7

    c2  g:aug7  c       s       s   s   g:7 s
    g:7 s4 e:7  a2:m    s       d:7 s   g:7 g:aug7
    c   g:aug7  c       s       s   c4:7 c:aug7 f a:7/e d2:m
    f           f:m6    c4 g:m6/bf a2:7 d:7 g:7 c4 cs:dim d:m7 g:7
}

changes = \transpose f c \changes

verse = \relative c'' {
    \time 2/4
    \tempo  "Fast" 4 = 140
    \key c \major

    g4 a    | c8 a g a  | e2~   | e2    | g4 a  | c8 a g a  | b2~   | b | \break
    g4 a    | c8 a g a  | e2~   | e2    | d4 e  | g8 e d e  | c2~   | c | \break
    d'4~ d8 c | d8 c a c | d2~  | d2    | d4~ d8 c | d8 c a c | d2~ | d | \break
}

melody = \relative c'' {
    \time 2/4
    \tempo  "Fast" 4 = 140
    \key g \major

    \transpose f c \verse

    \pageBreak
    
    \bar "|:"
    g4 a    | fs d  | e8 fs d4~ | d2    | e4 fs | d e   | c2~   | c | \break
    b4 a    | d b   | a8 b g4~  | g2    | fs'4 e | a fs | e2~   | e | \break
    g4 a    | fs d  | e8 fs d4~ | d2    | e4 d  | g b   | a2~   | a | \break
    a4 b    | a g   | e8 fs d4~ | d4. e8 | g4 e | g a   | g2~   | g8 r8 r4 \bar ":|" \break
}

verseI = \lyricmode {
    When the        | town is fast a --     | sleep,                |       | And it's      | mid -- night in the   | sky,      |   |
    That's the      | time the fes -- tive  | Chink,                |       | Starts to     | wink his oth -- er    | eye.      |   |
    Starts to       | wink his dream -- y   | eye,                  |       | La -- zi --   | ly you'll hear him    | sigh:     |   |

    Chi -- na --    | town, my              | Chi -- na -- town, __ |       | where the     | lights are            | low. __   |   |
    Hearts that     | know no               | oth -- er land, __    |       | drift -- ing  | to and                | fro. __   |   |
    Dream -- y,     | dream -- y, __        | Chi -- na -- town, __ |       | al -- mond    | eyes of               | brown. __ |   |
    Hearts seem     | light and             | life seems bright __  | in    | dream -- y    | Chi -- na --          | town. __  |   |
}
verseII = \lyricmode {
}
