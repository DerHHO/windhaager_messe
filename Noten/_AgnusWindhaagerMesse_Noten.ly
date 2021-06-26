\version "2.18.2"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))




globalAgnusWindhaagerMesse = {
  \taktstil
  \accidentalStyle modern-voice
  \time 3/4
}

vorspielpausenAgnusWindhaagerMesse = {

}

altNotenAgnusWindhaagerMesse = \tempTranspose \relative c' {
  \globalAgnusWindhaagerMesse
  g2 c4 |
  b'4 c4 g4 | % 205
  g4 f4 e4 | % 206
  f4 ( e4 ) d4 | % 207
  e4 ( g4 ) g4 | % 208
  a2 g4 | % 209
  b2 c4 | \barNumberCheck #210
  c4 b4 r4 \break | % 211
  g2 g4 | % 212
  gis4 gis4 gis4 | % 213
  a4 b4 c4 | % 214
  d2 c4 | % 215
  c4 b4 r4 | % 216
  b2 e,4 | % 217
  e4 ( gis4 ) a4 \break | % 218
  b2 e,4 | % 219
  e'2 d8 [ c8 ] | \barNumberCheck #220
  b4 a4 ( gis4 | % 221
  a2 r4 | % 222
  a2 a4 | % 223
  a4 g4 ) f4 | % 224
  a2 g4 | % 225
  f4 e4 d4 \break | % 226
  c'2 c4 | % 227
  b4 a4 g4 | % 228
  b4 b4 b4 | % 229
  c2 e,4 | \barNumberCheck #230
  e4 d4 r4 | % 231
  f2 e4 | % 232
  a2 g4 \break | % 233
  b2 c4 | % 234
  c,2 ( d4 ) | % 235
  c2 r4 s4 \bar "|."
}

altTextWindhaagerMesse = \lyricmode {
  De -- i qui tol -- lis pec -- ca --\skip1 ta mun --\skip1
    "di," mi -- se -- re -- re no -- "bis." A -- gnus De -- "i," qui tol
    -- lis pec -- ca -- ta mun -- "di," mi -- se -- re --\skip1 "re," mi
    -- se -- re -- "re " __\skip1 no --\skip1 \skip1 "bis." A -- gnus De
    --\skip1 "i," a -- gnus De --\skip1 "i," a -- gnus De -- "i," qui
    tol -- lis pec -- ca -- ta mun -- "di:" Do -- "na," do -- na no --
    bis pa --\skip1 "cem."
}

generic_instrumentAgnusWindhaagerMesse = \tempTranspose \relative c' {
  \globalAgnusWindhaagerMesse

}

generic_instrumentAgnusWindhaagerMesse = \tempTranspose \relative c' {
  \globalAgnusWindhaagerMesse

}

orgelRHNotenAgnusWindhaagerMesse = \tempTranspose \relative c' {
  \globalAgnusWindhaagerMesse

}

orgelLHNotenAgnusWindhaagerMesse = \tempTranspose \relative c {
  \globalAgnusWindhaagerMesse

}

metronomZeileAgnusWindhaagerMesse = \drummode {
}
\include "defAgnusWindhaagerMesse.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "AgnusWindhaagerMesse-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreAgnusWindhaagerMesse
  }
}

\book {
  \bookOutputName "AgnusWindhaagerMesse-midi"
  \score {

    \midi {
      \tempo 4 = 120
      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }

    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'chorpartitur
    \removeWithTag #'partitur
    \removeWithTag #'einzelstimme

    \unfoldRepeats
    \scoreAgnusWindhaagerMesse
  }
}
%Arbeitspartitur***
