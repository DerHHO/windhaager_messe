\version "2.22.0"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose d c  $music #}))


mBreak = { }
mmBreak = { }
mPageBreak = { }

globalBenedictusWindhaagerMesse = {
  \taktstil
  \accidentalStyle modern-voice
  \key ees\major
  \time 4/4
}

ablaufzeileBenedictusWindhaagerMesse = { }

vorspielpausenBenedictusWindhaagerMesse = {

}

altNotenBenedictusWindhaagerMesse = \tempTranspose \relative bes' {
  \globalBenedictusWindhaagerMesse
  \autoBeamOff
  bes2 ( g4 ) es4 | % 173
  g4 ( f4 ) es4 es4 | % 174
  as2 g4 es4 | % 175
  c'2 bes4 bes4 | % 176
  bes4 ( as4) as4 g4 | % 177
  g4. g8 f4 bes,4 \mBreak | % 178
  as'2 g8 [ f8 ] es8 [ d8 ] | % 179
  bes'2 as8 [ g8 ] f8 [ es8 ] | 
  f2 es8 [ d8 ] c8 [ bes8 ] | % 181
  bes'2 as8 [ g8 ] f8 [ es8 ] | % 182
  des'1 | % 183
  des4( c4) bes8 [ aes8 ] g8 [ f8 ] \mBreak | % 184
  ees2( g8 [ f8 ) ] ees8 [ f8 ] | % 185
  ees2 r2 | % 186
  f2( bes4.) d,8 | % 187
  g2 f4 bes4 | % 188
  a4( g4) f8 [ fis8 ] g8 [ es8 ] | % 189
  cis2 d4 f4 \mBreak | 
  g4( f4) f8 ( [ es8 ) ] es8 ( [ d8 ) ] | % 191
  d4. c8 c4 r4 | % 192
  f2 ( bes4 ) as4 | % 193
  as2 g2 | % 194
  g2 ( c4 bes4 ) | % 195
  bes2 a2 | % 196
  aes2 ( g2 ) |
  f4 ( as4 ) g4 f4 | % 198
  es2 f2 | % 199
  g2 bes2 | 
  c,4 ( as'4 ) g4 f4 | % 201
  es2 ( f4 ) d4 | % 202
  es2 r2 | % 203
  
}

altTextBenedictusWindhaagerMesse = \lyricmode {
  Be -- ne -- di -- ctus,
  qui ve -- "nit," qui ve -- nit in no -- mi -- ne
  Do -- mi -- "ni," 
  in no -- mi -- ne __ Do -- mi -- ni, __
  no -- mi -- ne __ Do -- mi -- ni, __ 
  in no -- mi -- ne __
  Do -- mi -- ni.
  Be -- ne -- di -- ctus, qui ve -- nit, __
  qui ve -- nit in no -- mi -- ne __
  Do -- mi -- ni. Be -- ne -- di -- ctus, 
  qui __ ve -- nit in __ no -- mi -- ne Do -- mi -- ni,
  in no -- mi -- ne Do -- mi -- ni.
}

hornIBenedictusWindhaagerMesse = \tempTranspose \relative c' {
  es1 |
  f2 es2 |
  es1 |
  es |
  f2 es | \mmBreak
  bes2 r |
  f'1 |
  g |
  f | \mmBreak
  g1 |
  R1*2 |
  es2 bes |
  bes r | \mmBreak
  R1*5 | \mmBreak
  R1*6 | \mmBreak
  R1 |
  es2 f |
  g r |
  R1 |
  es2 f |
  es2 r | 
  \bar "|."
}

hornIIBenedictusWindhaagerMesse = \tempTranspose \relative c {
  \globalBenedictusWindhaagerMesse
  g'1 |
  bes2 g |
  es1 |
  es |
  bes'2 bes | \mmBreak
  bes2 r |
  bes1 |
  es |
  bes | \mmBreak
  es1 |
  R1*2 |
  g,2 bes |
  g2 r | \mmBreak
  R1*5 | \mmBreak
  R1*6 | \mmBreak
  R1 |
  g2 bes |
  es2 r |
  R1 |
  g,2 bes |
  g r \bar "|."
}

orgelSopranBenedictusWindhaagerMesse = \relative bes' {
  \globalBenedictusWindhaagerMesse
  bes2 ( g4 es4 ) | % 173
  g f4 es2 | % 174
  as2 g4 es4 | % 175
  c'2 bes2 \mPageBreak | % 176
  bes4 as4 as4 g4 | % 177
  g2 f4 bes,4 | % 178
  as'2 ( g8 [ f8 es8 d8 ) ] | % 179
  bes'2 as8 [ g8 f8 es8 ] | 
  f2 ( es8 [ d8 c8 bes8 ) ] | % 181
  s1 |
  des'1 ~ \mBreak | % 183
  des4( c4 bes8 [ aes8 g8 f8 ) ] | % 184
  ees2 g8 ( [ f8 ees8 f8 ) ] | % 185
  ees2 r2 | % 186
  f2 ( bes2 ) | % 187
  g2 f4 bes4 | % 188
  a4 g4 f8 [ fis8 g8 es8 ] | % 189
  \oneVoice cis2 ( d4 ) f4 \mBreak | 
  g4 f4 f8 [ es8 es8 d8 ] | % 191
  <bes d>4. <a c>8 <a c>4 r4 | % 192
  \voiceOne f'2 ( bes4 as4 ) | % 193
  as2 g2 | % 194
  g2 ( c4 bes4 ) | % 195
  <c, bes'>2 <c a'>2 | % 196
  <f aes>2 g2 | % 197
  f4 as4 g4 f4 \mBreak | % 198
  <bes, es>2 <d f>2 | % 199
  <es g>2 bes'2 | 
  c4 as'4 g4 f4 | % 201
  <g, es'>2 <as f'>4 <f d'>4 | % 202
  <g bes es>2 r2 | % 203
}

orgelAltBenedictusWindhaagerMesse = \relative ees' {
  \globalBenedictusWindhaagerMesse
  es1 | % 173
  d2 es | % 174
  es2. es4 | % 175
  es2 es2 \mPageBreak | % 176
  f2 es2 | % 177
  es2 d4 bes4 s1*3 | % 182
  \voiceOne
  \tieDown
  bes'2( as8 g8 f8 es8~ ) | % 182
  \voiceTwo
  ees4 ( fes4 ees4 fes4 \mBreak | % 183
  ees2 ) s2 | % 184
  bes2 d2 | % 185
  ees2 r2 | % 186
  d1 | % 187
  d1 | % 188
  es4 d4 c2 s1 \mBreak s1*2 | % 192
  bes1 | % 193
  bes2 bes2 | % 194
  c1 s1 | % 196
  bes2 bes2 | % 197
  c1 \mBreak s1*2 | 
  <as' c>1 | % 201
  bes1 |
	s2 r2 \bar "|."
}

orgelRHNotenBenedictusWindhaagerMesse = \tempTranspose \relative c' {
  \globalBenedictusWindhaagerMesse
  <<
    \orgelSopranBenedictusWindhaagerMesse
    \\
    \orgelAltBenedictusWindhaagerMesse
  >>
}

orgelTenorBenedictusWindhaagerMesse = \relative bes {
  \globalBenedictusWindhaagerMesse
  \time 4/4  \key es \major g2 bes4 g4 | % 173
  bes4 as4 g2 | % 174
  c2 bes4 g4 | % 175
  as2 g2 \mPageBreak | % 176
  bes2 bes2 | % 177
  bes2 bes, | % 178
  f'1 | % 179
  g | 
  d2 es8 [ f8 g8 as8 ] | % 181
  g1 | % 182
  <g, bes'>1 \mBreak | % 183
  as'2 ~ as8 [ c8 bes8 as8 ] | % 184
  g2 as2 | % 185
  g2 r2 | % 186
  <bes, bes'>1 | % 187
  <bes bes'>1 | % 188
  \oneVoice c'4 bes4 a4 a,4 | % 189
  \voiceOne r4 e'4 f4 d4 \mBreak | 
  a'4 bes4 g4 bes4 | % 191
  \oneVoice f2 ( f,4 ) r4 | % 192
  d'1 | % 193
  es1 | % 194
  e1 | % 195
  f1 | % 196
  d2 es2 | % 197
  \voiceOne as4 f4 g4 as4 \mBreak | % 198
  g2 bes2 | % 199
  bes2 g2 | 
  <as, as'>1 | % 201
  <bes bes'>1 | % 202
  <es bes'>2 r2 \bar "|."

}

orgelBassBenedictusWindhaagerMesse = \relative ees {
  \globalBenedictusWindhaagerMesse
  es1 | % 173
  bes2 es2 | % 174
  c2 bes2 | % 175
  as2 g2 \mPageBreak | % 176
  d'2 es2 | % 177
  bes'2 bes,
  bes1~ |
  bes~ |
  bes1~ |
  bes |
  s1 \mBreak | % 183
  as1 | % 184
  bes1 | % 185
  es2 r2 |
  s2*6 | % 189
  bes2. r4 \mBreak | 
  ees4 d4 ees4 ees4 s1*6 | % 197
  as,1 \mBreak | % 198
  bes1 | % 199
  es2 g,2 s1*2 | % 202
  es2 r2 | % 203
	\bar "|."

}

orgelLHNotenBenedictusWindhaagerMesse = \tempTranspose \relative c {
  \globalBenedictusWindhaagerMesse
  <<
    \orgelTenorBenedictusWindhaagerMesse
    \\
    \orgelBassBenedictusWindhaagerMesse
  >>
}

metronomZeileBenedictusWindhaagerMesse = \drummode {
}
\include "defBenedictusWindhaagerMesse.ly"

%***Arbeitspartitur
#(set-global-staff-size 17)
\book {
  \bookOutputName "BenedictusWindhaagerMesse-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreBenedictusWindhaagerMesse
  }
}

\book {
  \bookOutputName "BenedictusWindhaagerMesse-midi"
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
    \scoreBenedictusWindhaagerMesse
  }
}
%Arbeitspartitur***
