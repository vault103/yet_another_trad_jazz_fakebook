\include "standard_header.ly"

title = "Pentatonic Scales"

% chords_used = \chordmode {
%    c           f               bf          ef
%    af          df              fs          b
%    e           a               d           g
% }

changes = \chordmode {
%    \key c \major
    c1          s               s               s
    f           s               s               s
    bf          s               s               s
    ef          s               s               s
    af          s               s               s
    df          s               s               s
    fs          s               s               s
    b           s               s               s
    e           s               s               s
    a           s               s               s
    d           s               s               s
    g           s               s               s
}

pent_scale = \relative c' {
    \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
    \key c \major
    c4 d e g        | a c d e   | g a c a   | g e d c   |
    \bar "||" \break
}

melody = \relative c' {
    \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
    \override NonMusicalPaperColumn.page-break-permission = ##f
    \time 4/4
    \pent_scale
    \transpose c f \pent_scale
    \transpose c' bf \pent_scale
    \transpose c ef \pent_scale
    \transpose c' af \pent_scale
    \transpose c df \pent_scale
    \transpose c fs \pent_scale
    \transpose c' b \pent_scale
    \transpose c e \pent_scale
    \transpose c' a \pent_scale
    \transpose c d \pent_scale
    \transpose c g \pent_scale
}
