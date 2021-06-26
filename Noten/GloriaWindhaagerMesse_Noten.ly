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


globalGloriaWindhaagerMesse = {
  \taktstil
  \accidentalStyle modern-voice
  \time 4/4
  \key c\major
}

ablaufzeileGloriaWindhaagerMesse = { }

vorspielpausenGloriaWindhaagerMesse = {

}

altNotenGloriaWindhaagerMesse = \tempTranspose \relative c'' {
  \globalGloriaWindhaagerMesse
  \autoBeamOff
  c2. c4 | % 34
  c,2 e4 e4 | % 35
  e2 e2 | % 36
  e1 | % 37
  e2 r2 | % 38
  e2. c4 | % 39
  a'2 g2 \mBreak | 
  c2. b4 | % 41
  a4 gis4 a4 b4 | % 42
  e,4. e8 e4 r4 | % 43
  f2 e2 | % 44
  a2 b4 ( c4 ) | % 45
  c,2 ( d2 ) | % 46
  c2 r4 e4 \mBreak | % 47
  b'4. e,8 e4 e8 e8 | % 48
  a4 a8 e8 c'4 c,8 c8 | % 49
  d2 e2 | 
  f4 g4 a4 b4 | % 51
  a2 gis2 | % 52
  a2 r2 \mBreak | % 53
  a2 g4 f4 | % 54
  g2 a4 bes4 | % 55
  bes4. ( a8 ) a2 | % 56
  d2 c2 | % 57
  bes2 a2 | % 58
  g2 g4 f4 | % 59
  f2 e2 \mBreak | 
  g2 g4 bes4 | % 61
  a4 ( e4 ) f2 | % 62
  a2. g4 | % 63
  f4 ( e4 ) d2 | % 64
  d'2 c2 | % 65
  bes2 a4 g4 | % 66
  f2 e2 \mBreak | % 67
  d2 r4 d'4 | % 68
  d1 | % 69
  d,4 a'4 a4 a4 | 
  a2 a2 | % 71
  b2. b4 | % 72
  c2 a2 | % 73
  a4 ( b4 a4 gis4 ) | % 74
  a2 r2 \mBreak | % 75
  f4. c8 c8 f8 g8 f8 | % 76
  f2 e2 | % 77
  c'2 c,8 ( [ g'8] ) a8 bes8 | % 78
  bes4. a8 a2 | % 79
  b2 c2 | 
  c2 bes2 
  \mPageBreak | % 81
  c2 g4. g8 | % 82
  a4. a8 e4 e4 | % 83
  e4 e8 e8 e4 e4 | % 84
  e4 e4 r2 | % 85
  e2 g2 | % 86
  a4 ( fis4 ) g2 \mBreak | % 87
  g2 ( b4 ) c4 | % 88
  c4. ( b8 ) b2 | % 89
  b2. b4 | 
  b4 ( a4 ) g4 ( f4 ) | % 91
  e2 ( d2 ) | % 92
  c2 r2 | % 93
  \bar "|."
}

altTextGloriaWindhaagerMesse = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o et in ter -- ra,
  et in ter -- ra pax ho -- mi -- ni -- bus 
  bo -- næ vo -- lun -- ta -- tis,
  lau -- da -- mus te, be -- ne -- di -- ci -- mus te,
  ad -- o -- ra -- mus te, glo -- ri -- fi -- ca -- mus te.
  Gra -- ti -- as a -- gi -- mus ti -- bi pro -- pter ma -- gnam
  glo -- ri -- am tu -- "am." Do -- mi -- ne De -- us,
  Rex coe -- le -- stis, De -- us Pa -- ter om -- ni -- po -- "tens."
  Qui tol -- lis pec -- ca -- ta mun -- "di," mi -- se -- re -- re 
  no -- bis.
  Quo -- ni -- am tu so -- lus san -- ctus,
  tu so -- lus al -- tis -- si -- mus Je -- su Chri -- ste,
  cum san -- cto spi -- ri -- tu in glo -- ri -- a De -- i pa
  -- "tris." A -- "men," a -- men, a -- men, a -- men,
  a -- "men," a -- men, __ a -- men.
}

hornIGloriaWindhaagerMesse = \tempTranspose \relative c' {
  \globalGloriaWindhaagerMesse
  c1 |
  e |
  e |
  e |
  e2 r2 |
  e2. c4 | \mmBreak
  R1*3 |
  e,2. r4 |
  R1*2 |
  c'2 d | \mmBreak
  c2 r |
  e1 |
  e1 |
  R1*2 | \mmBreak
  e1 |
  e2 r |
  R1*5 | \mmBreak
  R1*5 | \mmBreak
  R1*6 | \mmBreak
  R1*4 |
  r2 e2 |
  e r | \mmBreak
  R1*4 |
  d2 c |
  c d | \mmBreak
  c2 g |
  R1 |
  e1 |
  e2 r |
  e1 e | \mmBreak
  e2 r |
  c'2 d |
  R1*2 |
  e2 d |
  c2 r \bar "|."
}

hornIIGloriaWindhaagerMesse = \tempTranspose \relative c {
  \globalGloriaWindhaagerMesse
  c1 |
  e |
  e |
  e |
  e2 r |
  e2. c4 | \mmBreak
  R1*3 |
  e2. r4 |
  R1*2 |
  e2 g | \mmBreak
  e2 r |
  e1 |
  e1 |
  R1*2 | \mmBreak
  e1 |
  e2 r |
  R1*5 | \mmBreak
  R1*5 | \mmBreak
  R1*6 | \mmBreak
  R1*4 |
  r2 e2 |
  e r | \mmBreak
  R1*4 |
  g2 e |
  e g | \mmBreak
  e1 |
  R1 |
  e |
  e2 r |
  e1 |
  e | \mmBreak
  e2 r |
  g g |
  R1*2 |
  c2 g |
  e r \bar "|."
}

orgelSopranGloriaWindhaagerMesse = \relative c'' {
  \globalGloriaWindhaagerMesse
  \oneVoice
  c2. c4 \mBreak | % 34
  c,2 <c e>2 | % 35
  <gis b e>1 | % 36
  \voiceOne
  e'1 | % 37
  \oneVoice
  <gis, b e>2 r2 | % 38
  e'2. c4 | % 39
  a'2 g2 | 
  c2. b4 | % 41
  a4 gis4 a4 b4 | % 42
  <gis b e>2. r4 | % 43
  <b, f'>2 <c e>2 | % 44
  \voiceOne
  a'2 b4 c4 \mBreak | % 45
  \oneVoice
  <e, c'>2 <d b'>2 | % 46
  <e c'>2 r4 e4 | % 47
  b'2 ( e,2 ) | % 48
  <c a'>2 <c c'>2 | % 49
  d2 e2 | 
  f4 g4 a4 <d, f b>4 | % 51
  <c e a>2 <b e gis>2 | % 52
  <c e a>2 r2 | % 53
  <f a>2 ( <c g'>4 <a f'>4 ) | % 54
  g'2 a4 bes4 \mPageBreak | % 55
  bes4. ( a8 ) a2 | % 56
  <f d'>2 <f c'>2 | % 57
  <g bes>2 <f a>2 | % 58
  g2 g4 f4 | % 59
  f2 e2 | 
  g2. bes4 | % 61
  <f a>4 e4 f2 | % 62
  \voiceOne
  a2. ( g4 ) | % 63
  f4 e4 d2 \mBreak | % 64
  d'2. c4 | % 65
  bes2 a4 g4 | % 66
  \oneVoice
  <d f>2 <cis e>2 | % 67
  d2 r4 d'4 | % 68
  \voiceOne
  d1 | % 69
  d4 a2. | 
  <c, e a>2 <e a c>2 | % 71
  <e b'>2. <e b'>4 | % 72
  <e c'>2 <e a>2 \mBreak | % 73
  <e a>4 <f b>4 <e a>4 <d gis>4 | % 74
  <c a'>2 r2 | % 75
  f4. c8 c8 ( [ f8 g8 f8 ) ] | % 76
  f2 ( e2 ) | % 77
  c'2 ~ c8 [ g8 a8 bes8 ] | % 78
  bes4. a8 a2 | % 79
  <f g b>2 <e g c>2 |
  q <d g b> \mBreak | % 81
  c'2 <g c>2 | % 82
  a2 e2 | % 83
  <g, b e>2 <a c e>2 | % 84
  <g b e>2 r2 | % 85
  e'2 g2 | % 86
  a4 fis4 g2 | % 87
  g2 b4 c4 | % 88
  c4. b8 b2 | % 89
  b2. b4 | 
  b4 a4 g4 f4 | % 91
  <c e>2 <b d>2 \mBreak | % 92
  c2 r2 | % 93
}

orgelAltGloriaWindhaagerMesse = \relative c' {
  \globalGloriaWindhaagerMesse
  s1 \mBreak s1*2 | % 36
  \voiceTwo
  <a c>2 <gis b>4 <a c>4 s1*7 | % 44
  f'1 \mBreak s1*9 | % 54
  c1 \mPageBreak | % 55
  <c f>1 s1*2 | % 58
  d2 d2 | % 59
  c2 c2 | 
  e1 s1 | % 62
  cis4 ( d4 e4 cis4 ) | % 63
  d4 cis4 d2 \mBreak | % 64
  f2 fis4 a4 | % 65
  g2 f4 e4 s1*2 | % 68
  r4 <f a>4 ( <e gis>4 <f a>4 ) | % 69
  d4 <d f>4 ( <e g>4 <d f>4 ) s1*3 \mBreak s2*5 c2 | % 76
  bes1 | % 77
  e1 | % 78
  f2 f2 s1*2 \mBreak s1*6 | % 87
  e1 | % 88
  e2 g2 | % 89
  gis2. gis4 | 
  gis4 a4 e4 d4 s1 \mBreak s1 | % 93
}

orgelRHNotenGloriaWindhaagerMesse = \tempTranspose \relative c' {
  \globalGloriaWindhaagerMesse
  <<
    \orgelSopranGloriaWindhaagerMesse
    \\
    \orgelAltGloriaWindhaagerMesse
  >>

}

orgelTenorGloriaWindhaagerMesse = \relative c' {
  \globalGloriaWindhaagerMesse
  \oneVoice
  c2. c4 \mBreak | % 34
  c,2 a2 | % 35
  e'1 | % 36
  a,2 e'4 a,4 | % 37
  <e e'>2 r2 | % 38
  e'2. c4 | % 39
  \clef "bass" a'2 g2 | 
  c2. b4 | % 41
  a4 gis4 a4 b4 | % 42
  <e, b'>2. r4 | % 43
  g1 | % 44
  <f, f'>1 \mBreak | % 45
  <g g'>1 | % 46
  <c g'>2 r4 <e gis>4 | % 47
  <e gis>1 | % 48
  <a, a'>2. <a a'>4 | % 49
  d2 e2 | 
  f4 g4 a4 d,4 | % 51
  e2 e,2 | % 52
  a2 r2 | % 53
  <f c' f>1 | % 54
  <c' e>1 \mPageBreak | % 55
  f2 f2 | % 56
  <bes, bes'>2 <f' a>2 | % 57
  <e c'>2 <f c'>2 | % 58
  <bes, bes'>2 <bes g'>4 <b gis'>4 | % 59
  <c a'>2 <c g'>2 | 
  <c c'>1 | % 61
  <f c'>4 <cis bes'>4 <d a'>2 | % 62
  \voiceOne
  a'1 | % 63
  a2. d,4 \mBreak | % 64
  \oneVoice
  d2. fis4 | % 65
  g2 a4 bes4 | % 66
  a2 <a, a'>2 | % 67
  d2 r2 | % 68
  d1 | % 69
  d4 a'2. | 
  a,2 a2 | % 71
  gis2 gis'2 | % 72
  a2 <a c>2 \mBreak s2 \voiceOne c4 b4 | % 74
  \oneVoice <a, a'>2 r2 | % 75
  f'4. c8 c8 ( [ a'8 bes8 a8 ) ] | % 76
  <c, g'>1 | % 77
  c'2 <c, c'>2 | % 78
  <f c'>1 | % 79
  d2 c2 |
  g'1 \mBreak | % 81
  c2 <g e'>2 | % 82
  a2 <e e'>2 | % 83
  e2 a,2 | % 84
  e'2 r2 | % 85
  <c e c'>1 | % 86
  <c e c'>1 | % 87
  <c g' c>1 -\markup{ \teeny {.} } | % 88
  g'1 | % 89
  e1 | 
  e4 f4 g4 a4 | % 91
  g2 g,2 \mBreak | % 92
  c2 r2 | % 93
}

orgelBassGloriaWindhaagerMesse = \relative c {
  \globalGloriaWindhaagerMesse
  s1 \mBreak s1*5 | % 39
  \clef "bass" s1*4 | % 43
  d2 c2 s1 \mBreak s1*10 \mPageBreak s1*7 | % 62
  a4 ( b4 cis4 a4 ) | % 63
  d4 e4 f4 r4 \mBreak s1*9 \mBreak | % 73
  <a c>4 <d, d'>4 e2 s1*7 \mBreak s1*11 \mBreak s1 | % 93
  
}

orgelLHNotenGloriaWindhaagerMesse = \tempTranspose \relative c {
  \globalGloriaWindhaagerMesse
  <<
    \orgelTenorGloriaWindhaagerMesse
    \\
    \orgelBassGloriaWindhaagerMesse
  >>
}

metronomZeileGloriaWindhaagerMesse = \drummode {
}
\include "defGloriaWindhaagerMesse.ly"

%{Arbeitspartitur
#(set-global-staff-size 17)
\book {
  \bookOutputName "GloriaWindhaagerMesse-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreGloriaWindhaagerMesse
  }
}

\book {
  \bookOutputName "GloriaWindhaagerMesse-midi"
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
    \scoreGloriaWindhaagerMesse
  }
}
Arbeitspartitur%}
