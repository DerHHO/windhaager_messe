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
                     #{ \transpose c c  $music #}))

mBreak = { }
mmBreak = { }
mPageBreak = { }


globalSanctusWindhaagerMesse = {
  \taktstil
  \accidentalStyle modern-voice
  \time 4/4
  \key c\major
}

ablaufzeileSanctusWindhaagerMesse = { }

vorspielpausenSanctusWindhaagerMesse = {

}

altNotenSanctusWindhaagerMesse = \tempTranspose \relative c' {
  \globalSanctusWindhaagerMesse
  e2 e2 | % 152
  d2 ( e2 ) | % 153
  d2 r2 \mBreak | % 154
  f2 e2 | % 155
  e2 ( d2 | % 156
  c2 d2 ) | % 157
  e2 r2 | % 158
  b'2 b4 b4 | % 159
  a2 b2 | 
  a2. a4 | % 161
  gis1 | % 162
  gis2 gis4 gis4 \mPageBreak | % 163
  a2 a4 a4 | % 164
  a2 ( gis2 ) | % 165
  a2 a2 ~ | % 166
  a2 g4 f4 | % 167
  e2 ( d2 ) | % 168
  e4 e4 e4 e4 | % 169
  f2 g2 | 
  f2 e2 \bar "|."
}

altTextSanctusWindhaagerMesse = \lyricmode {
  San -- ctus, san -- ctus, san -- ctus,
  san -- ctus, Do -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt coe -- li et ter -- ra glo -- ri -- a
  tu -- a. O -- san -- na in ex -- cel -- sis.
}

hornISanctusWindhaagerMesse = \tempTranspose \relative c' {
  \globalSanctusWindhaagerMesse
  c2 c |
  d2 c |
  d r |
  d c |
  c d | 
  e d | \mmBreak
  c2 r |
  e1 |
  c2 e |
  c1 |
  e\fermata |
  e |
  e | \mmBreak
  e2 r |
  R1*2 |
  c2 d |
  c1 |
  c |
  c |
  \bar "|."
}

hornIISanctusWindhaagerMesse = \tempTranspose \relative c {
  \globalSanctusWindhaagerMesse
  e2 e |
  g e |
  g r |
  g e |
  e g |
  c g | \mmBreak
  e2 r |
  e1 |
  e1 |
  e |
  e1\fermata |
  e1 |
  e1 | \mmBreak
  e2 r |
  R1*2 |
  e2 g |
  e1 |
  c |
  c | 
  \bar "|."
}

orgelSopranSanctusWindhaagerMesse = \relative e' {
  \globalSanctusWindhaagerMesse
  \oneVoice
  <c e>2 <c e>2 | % 152
  <b d>2 <c e>2 \mBreak | % 153
  <b d>2 r2 | % 154
  <d f>2 <c e>2 | % 155
  <c e>2 <b d>2 | % 156
  c2 <b d>2 | % 157
  <c e>2 r2 | % 158
  <e gis b>1 | % 159
  <e a>2 <e b'>2 | 
  <e a>2. <e a>4 | % 161
  <e gis>1 | % 162
  <e gis>1 | % 163
  <e a>1 | % 164
  \voiceOne
  a2 gis2 | % 165
  a2 a2 ~ \mBreak | % 166
  a2 g4 f4 | % 167
  \oneVoice
  <c e>2 <b d>2 | % 168
  <c e>2 <c e>2 | % 169
  <c f>2 <c e g>2 | 
  <c f>2 <c e>2 | % 172
}

orgelAltSanctusWindhaagerMesse = \relative {
  \globalSanctusWindhaagerMesse
  \time 4/4  s1*2 \mBreak s1*11 | % 164
  e'1 | % 165
  e2 f2 ~ \mBreak | % 166
  f2
}

orgelRHNotenSanctusWindhaagerMesse = \tempTranspose \relative c' {
  <<
    \orgelSopranSanctusWindhaagerMesse
    \\
    \orgelAltSanctusWindhaagerMesse
  >>
}

orgelTenorSanctusWindhaagerMesse = \relative c {
  \globalSanctusWindhaagerMesse
  \oneVoice
  <c g'>2 <c g'>2 | % 152
  <g g'>2 <c g'>2 \mBreak | % 153
  <g g'>2 r2 | % 154
  <b g'>2 <c g'>2 | % 155
  <g g'>1 | % 156
  c2 <g g'>2 | % 157
  <c g'>2 r2 | % 158
  <e b'>1 | % 159
  <a c>2 <gis b>2 | 
  <a c>1 | % 161
  <e b'>1 | % 162
  <e b'>1 | % 163
  <e c'>1 | % 164
  \voiceOne
  c'2 d2 | % 165
  c2 <f, c'>2 ~ \mBreak | % 166
  <a c>2 <a c>2 | % 167
  g2 g2 | % 168
  g2 <g bes>2 | % 169
  <f a>2 <e g>2 | 
  a2 g2 | % 172
}

orgelBassSanctusWindhaagerMesse = \relative e {
  \globalSanctusWindhaagerMesse
  s1*2 \mBreak s1*11 | % 164
    e1 | % 165
    a,2 f2 ~ \mBreak | % 166
    f1 | % 167
    g1 | % 168
    c1 | % 169
    f,2 c2 | 
    f2 c'2 | % 172
}

orgelLHNotenSanctusWindhaagerMesse = \tempTranspose \relative c {
  <<
    \orgelTenorSanctusWindhaagerMesse
    \\
    \orgelBassSanctusWindhaagerMesse
  >>

}

metronomZeileSanctusWindhaagerMesse = \drummode {
}
\include "defSanctusWindhaagerMesse.ly"

%{Arbeitspartitur
#(set-global-staff-size 17)
\book {
  \bookOutputName "SanctusWindhaagerMesse-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreSanctusWindhaagerMesse
  }
}

\book {
  \bookOutputName "SanctusWindhaagerMesse-midi"
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
    \scoreSanctusWindhaagerMesse
  }
}
Arbeitspartitur%}
