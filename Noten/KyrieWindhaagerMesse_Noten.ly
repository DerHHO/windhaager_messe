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


mBreak = { }
mmBreak = {  }
mPageBreak = { }

globalKyrieWindhaagerMesse = {
  \taktstil
  \accidentalStyle modern-voice
  \time 2/2
  \key c\major
}

ablaufzeileKyrieWindhaagerMesse = { }

vorspielpausenKyrieWindhaagerMesse = {

}

altNotenKyrieWindhaagerMesse = \tempTranspose \relative c' {
  \globalKyrieWindhaagerMesse
  e2. e4 | % 2
  f2 e2 | % 3
  d1 | % 4
  e2 r2 | % 5
  a2 ( c2 ) | % 6
  b2 a2 | % 7
  g2 ( f2 ) | % 8
  e2 r2 | % 9
  g2 a4 b4 | \barNumberCheck #10
  c2 c4 c4 \mBreak | % 11
  b2( a2) | % 12
  g2 g2 | % 13
  a2 g2 | % 14
  c2 as4 f4 | % 15
  g1 | % 16
  g2 a2 | % 17
  bes2 a2 | % 18
  g2 f2 | % 19
  d'2 ( a2 ) \mBreak | \barNumberCheck #20
  b2 c2 | % 21
  c2 ( b2 ) | % 22
  b2 a2 | % 23
  a2 gis2 | % 24
  a2. a4 | % 25
  a2 f4 ( d4 ) | % 26
  e2( g2) | % 27
  c2 e,2 | % 28
  d2 ( f4 e4 ) | % 29
  c2 e4 e4 \mBreak | \barNumberCheck #30
  f2 g2 | % 31
  g2 ( f4 e4 | % 32
  f2 ) e2 | % 33
  \bar "|."
}

altTextKyrieWindhaagerMesse = \lyricmode {
  Ky -- ri -- e e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  e -- lei -- son, Chri -- ste e -- lei -- son,
  e -- lei -- son.
  Chri -- ste e -- lei --
  "son," Chri -- ste e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
}

hornIKyrieWindhaagerMesse = \tempTranspose \relative g' {
  \globalKyrieWindhaagerMesse
  g1 |
  R1 |
  g1 |
  e2 r |
  c'1 |
  R1 | 
  \mmBreak
  g1 |
  e2 r |
  c'1 |
  c |
  d |
  g,2 r | \mmBreak
  R1*2 |
  g1 |
  g2 r |
  R1*2 | \mmBreak
  R1*7 | \mmBreak
  R1*7
  \bar "|."
}

hornIIKyrieWindhaagerMesse = \tempTranspose \relative c' {
  \globalKyrieWindhaagerMesse
  e1 |
  R1 |
  g, |
  c2 r |
  e2 r |
  R1 | \mmBreak
  g,1 |
  c |
  e e |
  d |
  b2 r | \mmBreak
  R1*2 |
  g1 |
  c2 r |
  R1*2 | \mmBreak
  R1*7 | \mmBreak
  R1*7 | \mmBreak
  \bar "|."
}

orgelSopranKyrieWindhaagerMesse = \relative c' {
  \globalKyrieWindhaagerMesse
  \oneVoice
  <c e>1 | % 2
  <a c f>2 <g c e>2 | % 3
  <b d>1 | % 4
  <c e>2 r2 | % 5
  <c e a>2 <c e c'>2 | % 6
  <e g b>2 <c f a>2 | % 7
  g'2 f2 | % 8
  <c e>2 r2 | % 9
  \voiceOne g'2 a4 b4 | \barNumberCheck #10
  \oneVoice <e, c'>2 <e c'>2 | % 11
  <d b'>2 <fis a>2 | % 12
  g2 <e g>2 \mBreak | % 13
  <f a>2 <es g>2 | % 14
  \voiceOne c'2 as4 f4 | % 15
  g1 ~ | % 16
  g2 <f a>2 | % 17
  \oneVoice <c g' bes>2 <c f a>2 | % 18
  <e g>2 <d f>2 | % 19
  <f d'>2 <f a>2 | \barNumberCheck #20
  <f b>2 <e c'>2 | % 21
  <e c'>2 <g b>2 | % 22
  \voiceOne b2 a2 \mBreak | % 23
  <c, e a>2 <b e gis>2 | % 24
  <c e a>2. a'4 | % 25
  a2 f4 d4 | % 26
  <c e>2 <c e g>2 | % 27
  <c e c'>2 <c e>2 | % 28
  d2 f4 ( e4 ) | % 29
  c2 e2 | \barNumberCheck #30
  f2 g2 | % 31
  g2 f4 ( e4 ) | % 32
  f2 e2 | % 33
  \bar "|."
}

orgelAltKyrieWindhaagerMesse = \relative g {
  \globalKyrieWindhaagerMesse
  s1*6 | % 7
  <b d>1 s1 | % 9
  e1 s1*3 \mBreak s1 | % 14
  e4 e4 f4 <c es>4 | % 15
  <c e>2 <bes d>4 <d f>4 | % 16
  <c e>2 c2 s1*5 | % 22
  e4 ( d4 ) c2 \mBreak s1*2 | % 25
  d1 s1*2 | % 28
  c2 b2 | % 29
  c2 c2 | \barNumberCheck #30
  c1 | % 31
  c1 | % 32
  c2 c2 | % 33
}

orgelRHNotenKyrieWindhaagerMesse = \tempTranspose \relative c' {
  <<
    \orgelSopranKyrieWindhaagerMesse
    \\
    \orgelAltKyrieWindhaagerMesse
  >>
}

orgelTenorKyrieWindhaagerMesse = \relative c {
  \globalKyrieWindhaagerMesse
  \oneVoice
  <c g'>1 | % 2
  <f, f'>2 c'2 | % 3
  <g g'>1 | % 4
  <c g'>2 r2 | % 5
  a2 a'2 | % 6
  e2 f2 | % 7
  g2  <g, g'>2 | % 8
  <c g'>2 r2 | % 9
  <c g'>1 | \barNumberCheck #10
  <c g'>2 <c g'>2 | % 11
  g'2 d2 | % 12
  g2 <ees bes'>2 \mBreak | % 13
  <d bes'>2 <es bes'>2 | % 14
  <a, a'>1  | % 15
  <g g'>1  | % 16
  c2   f2 | % 17
  e2   f2 | % 18
  <c bes'>2  <d a'>2 | % 19
  \clef "bass" 
  \voiceOne a'2  a2 | \barNumberCheck #20
  \oneVoice <d, g>2 <c g'>2 | % 21
  c2 e2 | % 22
  gis2 a2 \mBreak | % 23
  e1 | % 24
  a,1 | % 25
  <f f'>1 | % 26
  <g g'>1  | % 27
  <g g'>1 | % 28
  <g g'>1 | % 29
  \voiceOne e'2 g2 | \barNumberCheck #30
  a2 e2 | % 31
  e2 f4 ( g4 ) | % 32
  a2 g2 | 
  \bar "|."
  
}

orgelBassKyrieWindhaagerMesse = \relative d {
  \globalKyrieWindhaagerMesse
  s1*12 \mBreak s1*6 | % 19
  \clef "bass" d1 s1*2 | % 22
  e1 \mBreak s1*6 | % 29
  c1 | \barNumberCheck #30
  c1 | % 31
  c1 | % 32
  c1 | % 33
} 

orgelLHNotenKyrieWindhaagerMesse = \tempTranspose \relative c {
  \globalKyrieWindhaagerMesse
  <<
    \orgelTenorKyrieWindhaagerMesse
    \\
    \orgelBassKyrieWindhaagerMesse
  >>

}

metronomZeileKyrieWindhaagerMesse = \drummode {
}
\include "defKyrieWindhaagerMesse.ly"

%{Arbeitspartitur
#(set-global-staff-size 17)
\book {
  \bookOutputName "KyrieWindhaagerMesse-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreKyrieWindhaagerMesse
  }
}

\book {
  \bookOutputName "KyrieWindhaagerMesse-midi"
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
    \scoreKyrieWindhaagerMesse
  }
}
Arbeitspartitur%}
