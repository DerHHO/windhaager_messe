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




globalCredoWindhaagerMesse = {
  \taktstil
  \accidentalStyle modern-voice
  \key c\major
  \time 3/4
}

ablaufzeileCredoWindhaagerMesse = { }

vorspielpausenCredoWindhaagerMesse = {

}

altNotenCredoWindhaagerMesse = \tempTranspose \relative c' {
  \globalCredoWindhaagerMesse
  \autoBeamOff
  g'4 g4 g4 \break | % 94
  e2 f4 | % 95
  e2 d4 | % 96
  g2 a4 | % 97
  g2 r4 | % 98
  a4 a4 b4 | % 99
  c4 ( a4 ) d4 | 
  a2 ( b4 ) | % 101
  a8 [ a8 ] f4 g4 \break | % 102
  a4 f4 g4 | % 103
  f2 ( e4 ) | % 104
  f4 f4 f4 | % 105
  g4. g8 g4 | % 106
  a2 g4 | % 107
  f8 [ f8 ] fis4 fis4 | % 108
  g4 g4 a4 \bar "||"
  \break | % 109
  \key f \major bes4 b4 b4 | 
  bes4. bes8 bes4 | % 111
  c4 ( bes2 ) | % 112
  \key c \major a4 a4 e8 [ e8 ] | % 113
  f2 f4 | % 114
  e2 a4 | % 115
  c4. b8 a4 \break | % 116
  a4 gis4 b8 [ b8 ] | % 117
  c2 c4 | % 118
  c8 [ b8 ] b4 d4 | % 119
  d4 c4 \prall a4 | 
  g4 a4 -\f fis4 | % 121
  g2 g8 [ g8 ] | % 122
  \key f \major a2 g4 \break | % 123
  f4 ( g4 ) f4 | % 124
  e4 ( d4 ) c4 | % 125
  \key c \major g'4 g4 r4 | % 126
  \key f \major a2 g4 | % 127
  c2 bes4 | % 128
  bes4 ( as4 ) f4 | % 129
  e4 ( f4 ) d4 | 
  e2 r4 \break | % 131
  g4 g4 g4 | % 132
  \key c \major c2 g4 | % 133
  a4. a8 e4 | % 134
  f4 g2 | % 135
  c,4 r4 g'4 | % 136
  a4 f4 a4 | % 137
  g2 c4 | % 138
  c4 ( b4 ) b4 \break | % 139
  a2. | 
  g8 [ g8 ] gis8 [ gis8 ] gis8 [ gis8 ] | % 141
  a2 f8 [ d8 ] | % 142
  e2 \prall d4 | % 143
  c4 r4 r4 | % 144
  g'4 g4 g8 [ g8 ] | % 145
  e2 f4 \break | % 146
  e4. e8 d4 | % 147
  g2 a4 \prall | % 148
  g2 r4 | % 149
  c4 ( c,4 d4 ) | 
  c2 r4 | % 151
}

altTextCredoWindhaagerMesse = \lyricmode {
  Cre -- do in u -- num De -- um, Pa --
  trem om -- ni --\skip1 po -- ten --\skip1 "tem," fa -- cto -- rem
  coe -- li et ter --\skip1 "rae," vi -- si -- bi -- li -- um om -- ni
  -- "um." Qui pro -- pter no -- stram sa -- lu -- tem des -- cen --
  dit de coe --\skip1 "lis." Et in -- car -- na -- tus est de Spi --
  ri -- tu san -- cto ex Ma -- ri -- a vir -- gi -- "ne," et ho
  --\skip1 mo fa --\skip1 ctus "est." Cru -- ci -- fi -- xus e
  --\skip1 ti -- "am " __\skip1 pro no -- "bis," pas -- "sus," pas --
  sus "et " __\skip1 se -- pul --\skip1 tus "est." Et re -- sur -- re
  -- xit ter -- ti -- a di --\skip1 e se -- cun -- dum scrip -- tu --
  "ras," "et " __\skip1 as -- cen -- dit in coe -- lum se -- det ad
  dex -- tram Pa --\skip1 "tris." Et vi -- tam ven -- tu -- ri sae --
  cu -- "li." A --\skip1 "men," a --\skip1 \skip1 "men."
}

hornICredoWindhaagerMesse = \tempTranspose \relative c' {
  \globalCredoWindhaagerMesse

}

hornIICredoWindhaagerMesse = \tempTranspose \relative c' {
  \globalCredoWindhaagerMesse

}


orgelSopranCredoWindhaagerMesse = \relative c' {
  \globalCredoWindhaagerMesse
  <c e g>2. | % 94
  <c e>2 <d f>4 | % 95
  <c e>2 <b d>4 | % 96
  <c g'>2 <c f a>4 | % 97
  <c e g>2 r4 | % 98
  <c e a>2 <e gis b>4 | % 99
  <e a c>4 <e a>4 <f d'>4 \break | 
  <e a>2 <e gis b>4 | % 101
  <e a>8 r8 f4 <e g>4 | % 102
  a4 f4 g4 | % 103
  <c, f>2 <c e>4 | % 104
  <c f>2. | % 105
  <c e g>2. | % 106
  <cis e a>2 <e g>4 | % 107
  <d f>4 <d fis>2 | % 108
  g2 <fis a>4 | % 109
  bes4 b2 \pageBreak | 
  <e, gis bes>2. | % 111
  <a c>4 <gis bes>2 | % 112
  <c, a'>2 <c e>4 | % 113
  <d f>2. | % 114
  <c e>2 <c a'>4 | % 115
  <e c'>4. <d b'>8 <c a'>4 | % 116
  <b a'>4 <b gis'>4 <e b'>4 | % 117
  <e c'>2 <es c'>4 | % 118
  c'8 ( [ b8 ) ] b4 d4 | % 119
  d4 c4 a4 \break | 
  g4 a4 fis4 | % 121
  <b, d g>2 g'4 | % 122
  \key f \major a2 g4 | % 123
  f4 g4 f4 | % 124
  e4 d4 c4 | % 125
  g'4 g4 r4 | % 126
  <f a>2 <es g>4 | % 127
  c'2 bes4 | % 128
  bes4 as4 f4 | % 129
  e4 f4 d4 \break | 
  <bes e>2 r4 | % 131
  g'4 g4 g4 | % 132
  \key c \major c2 g4 | % 133
  a2 e4 | % 134
  f4 <b, d g>2 ~ | % 135
  <c e g>4 r4 <c e g>4 | % 136
  <c f a>2. | % 137
  <c e g>2 <es a c>4 | % 138
  <e c'>4 <d b'>4 <d b'>4 | % 139
  <d f a>2. | 
  g4 gis2 \break | % 141
  <c, a'>2 <d f>4 | % 142
  <c e>2 <b d>4 | % 143
  c2 r4 | % 144
  g'2 g4 | % 145
  e2 f4 | % 146
  e2 d4 | % 147
  g2 a4 | % 148
  g2 r4 | % 149
  <e g c>2 <f g d'>4 | 
  <e g c>2 r4 | % 151
}

orgelAltCredoWindhaagerMesse = \relative c' {
  \globalCredoWindhaagerMesse
  s4*21 \break s1*6 | % 108
  d2. | % 109
  <d g>4 <d g>4 <dis a'>4 \pageBreak s2. | % 111
  e4 e4 ( d4 ) s2*9 | % 118
  d2 f4 | % 119
  e2. \break | 
  d2. s2. | % 122
  \key f \major s1*6 \break s1. | % 132
  \key c \major s2*9 | % 138
  g2. s2. | 
  <b, e>2. \break | % 141
  e4 d4 a4 s4*27 | % 151
}

orgelRHNotenCredoWindhaagerMesse = \tempTranspose \relative c' {
  <<
    \orgelSopranCredoWindhaagerMesse
    \\
    \orgelAltCredoWindhaagerMesse
  >>
}

orgelTenorCredoWindhaagerMesse = \relative c {
  \globalCredoWindhaagerMesse
  c8 [ d8 ] e8 [ f8 ] e8 [ d8 ] | % 94
  c8 [ d8 ] c8 [ b8 ] a8 [ b8 ] | % 95
  c8 [ d8 ] e8 [ f8 ] g8 [ f8 ] | % 96
  e8 [ f8 ] e8 [ c8 ] f8 [ f,8 ] | % 97
  c'2 r4 | % 98
  a2 e'4 | % 99
  <a c>2 <d, d'>4 \break | 
  <e c'>2 <d d'>4 | % 101
  <a' c>8 r8 f4 <c c'>4 | % 102
  c'4 a4 g4 | % 103
  a2 g4 | % 104
  <f a>2. | % 105
  c2. | % 106
  a2 cis4 | % 107
  d4 c2 | % 108
  bes4 bes'4 a4 | % 109
  g4 f2 \pageBreak | 
  e2. | % 111
  e2. | % 112
  <a, a'>2. | % 113
  d2. | % 114
  a2. | % 115
  e'2. | % 116
  r4 r4 gis4 | % 117
  a4 a4 a4 | % 118
  g2 <b, gis'>4 | % 119
  a'2 c4 \break | 
  b4 c4 a4 | % 121
  g,2 r4 | % 122
  \key f \major a'2 g4 | % 123
  f4 g4 f4 | % 124
  e4 d4 c4 | % 125
  g'4 g4 r4 | % 126
  bes2. | % 127
  a4 bes4 s4 | % 128
  bes2 as4 | % 129
  g4 as4 f4 \break | 
  g2 r4 | % 131
  g4 g4 g4 | % 132
  \key c \major c2 g4 | % 133
  a2 e4 | % 134
  f4 g2 | % 135
  c,4 r4 c4 | % 136
  f,2. | % 137
  c'4 e4 fis4 | % 138
  g2. | % 139
  d2. | 
  e4 e2 \break | % 141
  a,4 f'2 | % 142
  g2 g,4 | % 143
  c2. | % 144
  g'2 g4 | % 145
  e2 f4 | % 146
  e2 d4 | % 147
  g2 a4 | % 148
  g2 r4 | % 149
  g2 g,4 | 
  c2 r4 | % 151
}

orgelBassCredoWindhaagerMesse = \relative g, {
  \globalCredoWindhaagerMesse
  s4*21 \break s1. | % 102
  f2 bes,4 | % 103
  c2. s2*9 \pageBreak s2*9 | % 116
  e2. | % 117
  a,4 a'4 fis4 s2. | % 119
  c2. \break | 
  d2. s2. | % 122
  \key f \major s1*3 | % 126
  d2 es4 | % 127
  a4 g4 s4 | % 128
  f2 as,4 | % 129
  bes2. \break | 
  <es, e'>2 s1 | % 132
  \key c \major s4*27 \break s2*15 | % 151
}

orgelLHNotenCredoWindhaagerMesse = \tempTranspose \relative c {
  \globalCredoWindhaagerMesse
  <<
    \orgelTenorCredoWindhaagerMesse
    \\
    \orgelBassCredoWindhaagerMesse
  >>
}

metronomZeileCredoWindhaagerMesse = \drummode {
}
\include "defCredoWindhaagerMesse.ly"

%{Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "CredoWindhaagerMesse-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreCredoWindhaagerMesse
  }
}

\book {
  \bookOutputName "CredoWindhaagerMesse-midi"
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
    \scoreCredoWindhaagerMesse
  }
}
Arbeitspartitur%}
