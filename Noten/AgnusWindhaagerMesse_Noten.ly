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


mBreak = {  }
mPageBreak = {  }

globalAgnusWindhaagerMesse = {
  \taktstil
  \accidentalStyle modern-voice
  \time 3/4
  \key c\major
}

ablaufzeileAgnusWindhaagerMesse = {
  
}

vorspielpausenAgnusWindhaagerMesse = {

}

altNotenAgnusWindhaagerMesse = \tempTranspose \relative g' {
  \globalAgnusWindhaagerMesse
  \autoBeamOff
  g2 c4 |
  b4 c4 g4 | % 205
  g4 f4 e4 | % 206
  f4 ( e4 ) d4 | % 207
  e4 ( g4 ) g4 | % 208
  a2 g4 | % 209
  b2 c4 |
  c4 b4 r4 \mBreak | % 211
  g2 g4 | % 212
  gis4 gis4 gis4 | % 213
  a4 b4 c4 | % 214
  d2 c4 | % 215
  c4 b4 r4 | % 216
  b2 e,4 | % 217
  e4 ( gis4 ) a4 \mBreak | % 218
  b2 e,4 | % 219
  e'2 d8 [ c8 ] |
  b4( a4 gis4) | % 221
  a2 r4 | % 222
  a2 a4 | % 223
  a4( g4 ) f4 | % 224
  a2 g4 | % 225
  f4( e4) d4 \mBreak | % 226
  c'2 c4 | % 227
  b4 a4 g4 | % 228
  b4 b4 b4 | % 229
  c2 e,4 |
  e4 d4 r4 | % 231
  f2 e4 | % 232
  a2 g4 \mBreak | % 233
  b2 c4 | % 234
  c,2 ( d4 ) | % 235
  c2 r4 \bar "|."
}

altTextAgnusWindhaagerMesse = \lyricmode {
  A -- gnus
  De -- i qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis. A -- gnus De -- "i," qui tol
  -- lis pec -- ca -- ta mun -- "di," mi -- se -- re -- re,
  mi -- se -- re -- re __ no -- bis. A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus De -- "i," qui
  tol -- lis pec -- ca -- ta mun -- "di:" Do -- "na," do -- na no --
  bis pa -- cem.
}

hornIAgnusWindhaagerMesse = \tempTranspose \relative c' {
  \globalAgnusWindhaagerMesse
  c2. |
  d4 c c |
  R2. |
  d4 c d |
  c2. |
  c2. |
  d2 c4 |
  c4 e r |
  e,2. |
  e |
  e |
  e |
  e2 r4 |
  e2. |
  e |
  e |
  e |
  r4 e2 |
  e2 r4 |
  R2.*6 |
  d'2. |
  c |
  c4 d r |
  d2 c4 |
  c2. |
  d2 c4 |
  c2 d4 |
  c2 r4 \bar "|."
}

hornIIAgnusWindhaagerMesse = \tempTranspose \relative c {
  \globalAgnusWindhaagerMesse
  e2. |
  g4 e e |
  R2. |
  d'4 g,2 |
  g2. |
  c,2. |
  g'2 e4 |
  e g r |
  e2. |
  e |
  e |
  e |
  e2 r4 |
  e2. |
  e |
  e |
  e |
  r4 e2 |
  e r4 |
  R2.*6 |
  g2. |
  e |
  e4 g r |
  g2 e4 |
  c2. |
  g'2 e4 |
  e2 g4 |
  e2 r4 \bar "|."

}

orgelSopranAgnusWindhaagerMesse = \relative g' {
  \globalAgnusWindhaagerMesse
  g2 c4 | % 204
  <d, b'>4 <e c'>4 <e g>4 | % 205
  g4 f4 e4 \mBreak | % 206
  f4 e4 d4 | % 207
  e2. | % 208
  <f a>2 <e g>4 | % 209
  <f g b>2 <e g c>4 | 
  <e g c>4 <d g b>4 r4 | % 211
  <e g>2. | % 212
  <e gis>2. | % 213
  a4 b4 c4 | % 214
  d2 c4 \mBreak | % 215
  c4 b4 r4 | % 216
  b2 e,4 | % 217
  e4 gis4 a4 | % 218
  b2 e,4 | % 219
  e'2 d8 [ c8 ] | 
  <d, f b>4 <c e a>4 <b d gis>4 | % 221
  <c a'>2 r4 | % 222
  <f a>2. \mPageBreak | % 223
  a4 g4 f4 | % 224
  a2 g4 | % 225
  f4 e4 d4 | % 226
  c'2 c4 | % 227
  b4 a4 g4 | % 228
  <g b>2. | % 229
  <g c>2 <c, e>4 | 
  <c e>4 <b d>4 r4 | % 231
  <d f>2 <c e>4 \mBreak | % 232
  <c a'>2 <c g'>4 | % 233
  <f b>2 <e c'>4 | % 234
  <e c'>2 <d b'>4 | % 235
  <e c'>2 r4 \bar "|."
}

orgelAltAgnusWindhaagerMesse = \relative g' {
  \globalAgnusWindhaagerMesse
  e2. s2. | % 205
  d2 c4 \mBreak | % 206
  d4 c4 b4 | % 207
  c2. | % 208
  c2. s1*3 | % 213
  e2. | % 214
  e2. \mBreak | % 215
  e4 e4 s1 | % 217
  e2. | % 218
  e2 e4 | % 219
  e2. s4*9 \mPageBreak | % 223
  e2 f4 | % 224
  <cis e>2. | % 225
  d4 cis4 d4 | % 226
  g4 a2 s4*15 \mBreak 
  
}

orgelRHNotenAgnusWindhaagerMesse = \tempTranspose \relative c' {
  \globalAgnusWindhaagerMesse
  <<
    {
      \voiceOne
      \orgelSopranAgnusWindhaagerMesse
    }
    \new Voice {
      \voiceTwo
      \orgelAltAgnusWindhaagerMesse
    }
  >>

}

orgelTenorAgnusWindhaagerMesse = \relative c {
  \globalAgnusWindhaagerMesse
  <c g'>2. | % 204
  g'4 g2 | % 205
  b2 c4 \mBreak | % 206
  a4 g2 | % 207
  <c, g'>2. | % 208
  f,2 -\markup{ \teeny {.} } c'4 | % 209
  d2 c4 | 
  g'2 r4 | % 211
  c2. | % 212
  b2. | % 213
  a4 gis4 a4 | % 214
  b2 -\markup{ \teeny {.} } a4 \mBreak | % 215
  a4 gis4 r4 | % 216
  gis2. | % 217
  a4 b4 c4 | % 218
  gis2. | % 219
  a2. | 
  d,4 -\markup{ \teeny {.} } e2 | % 221
  <a, e'>2 r4 | % 222
  <f' c'>2. \mPageBreak | % 223
  c'4 bes4 a4 | % 224
  a2. | % 225
  a2. | % 226
  e'4 -\markup{ \teeny {.} } d2 | % 227
  d4 c4 b4 | % 228
  d2. | % 229
  c2 f,4 | 
  g2 r4 | % 231
  g2. -\markup{ \teeny {.} } \mBreak | % 232
  f2 e4 | % 233
  g2. | % 234
  g2. | % 235
  g2 r4 \bar "|."
}

orgelBassAgnusWindhaagerMesse = \relative g {
  \globalAgnusWindhaagerMesse
  s2. | % 204
  g4 c,4 c4 | % 205
  g4 gis4 a4 \mBreak | % 206
  f4 g2 s1*3 | % 211
  c2. | % 212
  e2. | % 213
  c4 b4 a4 | % 214
  gis2 a4 \mBreak | % 215
  e'2 s4 | % 216
  e2 d4 | % 217
  c4 b4 a4 | % 218
  e'2 d4 | % 219
  c2 b8 [ a8 ] s4*9 \mPageBreak | % 223
  c2 f4 | % 224
  a,2. | % 225
  d4 e4 f4 | % 226
  e4 fis2 | % 227
  g2. | % 228
  f2. | % 229
  e2 f4 s2. | % 231
  b,2 c4 \mBreak | % 232
  f,2 c'4 | % 233
  d2 c4 | % 234
  g2. | % 235
  c2 r4 \bar "|."
}

orgelLHNotenAgnusWindhaagerMesse = \tempTranspose \relative c {
  <<
    \orgelTenorAgnusWindhaagerMesse
    \\
    \orgelBassAgnusWindhaagerMesse
  >>
}

metronomZeileAgnusWindhaagerMesse = \drummode {
}
\include "defAgnusWindhaagerMesse.ly"

%{Arbeitspartitur
#(set-global-staff-size 17)
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
Arbeitspartitur%}
