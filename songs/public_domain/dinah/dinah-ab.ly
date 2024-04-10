\version "2.19.82"
\include "dinah.inc"

title = \markup { "Dinah - A" \flat_mark }
source_url  = \markup { "Source: " \stout }

chords_used = \chordmode {
    \set majorSevenSymbol = \markup { (maj7) }
    af:6        bf:m7       ef:7        ef:7
    f:m         f:m7+       f:m7        f:m6
}

guitar_chords = \chordmode {
    af:6        bf:m7       ef:7        ef'':7
    f:m         f:m7+       f'':m7      f:m6
}

changes = \chordmode {
%    \key af \major
    \set majorSevenSymbol = \markup { (maj7) }
    af1:6               s               s           s
    bf:m7               ef:7            af:6        bf2:m7  ef:7
    af1:6               s               s           s
    bf:m7               ef:7            af:6        s
    f:m                 f:m7+           f:m7        f:m6
    f2:m    f:m7+       f:m7    f:m6    bf1:m7      ef:7
    af1:6               s               s           s
    bf:m7               ef:7            af:6        bf2:m7  ef:7
}

guitar_changes = \chordmode {
%    \key af \major
    \set majorSevenSymbol = \markup { (maj7) }
    af1:6               s               s           s
    bf:m7               ef:7            af:6        bf2:m7  ef:7
    af1:6               s               s           s
    bf:m7               ef:7            af:6        s
    f:m                 f:m7+           f'':m7      f:m6
    f2:m    f:m7+       f'':m7  f:m6    bf1:m7      ef'':7
    af1:6               s               s           s
    bf:m7               ef:7            af:6        bf2:m7  ef:7
}

melody  = \transpose g af \melody

\include "standard_parts.ly"
