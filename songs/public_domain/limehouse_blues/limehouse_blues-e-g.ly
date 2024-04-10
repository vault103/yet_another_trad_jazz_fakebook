\version "2.19.82"
\include "limehouse_blues.inc"
title = \markup { "Limehouse Blues - E, G (UHC)" }

chords_used = \transpose af g \chords_used
changes     = \chordmode {
    \transpose af g \changes_verse_creole
    \changes_chorus_uhc
}
melody      = \transpose af g \melody

\include "standard_parts.ly"
