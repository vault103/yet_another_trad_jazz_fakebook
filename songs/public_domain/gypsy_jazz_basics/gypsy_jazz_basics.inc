\include "standard_header.ly"

title       = "Gypsy Jazz Basics - G"
subtitle    = "Django Reinhardt (by way of Paul Davids, Adrian Holovaty)"
source_url  = \markup { \with-url #"https://www.youtube.com/watch?v=UBQif1eLPcc" "Source: DJANGO REINHARDT: What every guitarist should know (beginner to pro)" }

chords_used = \chordmode {
    g       e:m     a:m     d:7
            g:7     c       cs:dim
            e:7     a:7

    g:6     e':m7   a':m7   d:9
}

changes = \chordmode {
%    \key g \major
    g'2
           e:m     a:m     d:7
    g       e:m     a:m     d:7
    g       g:7     c       cs:dim
    g       e:7     a:7     d:7

    g':6     e':m7   a':m7   d:9
    g:6     e':m7   a':m7   d:9
    g:6     g:7     c       cs:dim
    g:6     e:7     a:7     d:7
}

melody = \relative c' {
    \time 4/4
    \set Staff.timeSignatureFraction = #'(2 . 2)
    \tempo  "Bouncy" 4 = 180
    \key g \major

    <b d g b>4^"Simplified Chords"
                    <b d g b>       <b e g b>   <b e g b>       |
    <gs ds' gs b>   <gs ds' gs b>   <a d fs c'> <a d fs c'>     | \break

    <b d g b>       <b d g b>       <b e g b>   <b e g b>       |
    <gs ds' gs b>   <gs ds' gs b>   <a d fs c'> <a d fs c'>     | \break

    <b d g b>       <b d g b>       <d f b>     <d f b>         |
    <c e g c>       <c e g c>       <as e' g cs> <as e' g cs>   | \break

    <b d g b>       <b d g b>       <b e gs d'>  <b e gs d'>    | 
    <a e' g cs>     <a e' g cs>     <a d fs c'>     <a d fs c'>     | \break

    \bar "||" \break

    \pageBreak

    <b e g d'>4^"Advanced Chords"
                    <b e g d'>      <as e' g d'>    <as e' g d'>    |
    <a ds g c>      <a ds g c>      <as f' g cs>    <as f' g cs>    | \break

    <b e g d'>      <b e g d'>      <as e' g d'>    <as e' g d'>    |
    <a ds g c>      <a ds g c>      <as f' g cs>    <as f' g cs>    | \break

    <b e g d'>      <b e g d'>      <d f b>         <d f b>         |
    <c e g c>       <c e g c>       <as e' g cs>    <as e' g cs>    | \break

    <b e g d'>      <b e g d'>      <b e gs d'>     <b e gs d'>     | 
    <a e' g cs>     <a e' g cs>     <a d fs c'>     <a d fs c'>     | \break

    \bar "||" \break
}
