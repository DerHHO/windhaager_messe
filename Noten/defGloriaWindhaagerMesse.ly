\version "2.22.0"

chorpartiturGloriaWindhaagerMesse = {
  \new ChoirStaff <<
    <<

      \new Staff \with {
        instrumentName = "Alt"
        shortInstrumentName = "A"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "valt" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \altNotenGloriaWindhaagerMesse
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenGloriaWindhaagerMesse
          }
        }
        \new Lyrics \lyricsto "valt" \altTextGloriaWindhaagerMesse
      >>
    >>
  >>
}


orgelsystemGloriaWindhaagerMesse = {
  <<
    \new PianoStaff <<

      \set PianoStaff.instrumentName = "Orgel"
      \set PianoStaff.shortInstrumentName = "Org."	<<

        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

        }
        <<
          \new Voice = "vrH" {
            \tag #'transponierendepartitur {
              \clef "treble"
              \transpose c c \orgelRHNotenGloriaWindhaagerMesse
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenGloriaWindhaagerMesse
            }
          }

        >>


        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

          \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
        }
        <<
          \new Voice = "vlH" {
            \tag #'transponierendepartitur {
              \clef "bass"
              \transpose c c \orgelLHNotenGloriaWindhaagerMesse
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenGloriaWindhaagerMesse
            }
          }

        >>

      >>
    >>
  >>

}

scoreGloriaWindhaagerMesse = {
  <<
    \chorpartiturGloriaWindhaagerMesse


    \new Staff \with {
      instrumentName = "H??rner (C)"
      shortInstrumentName = "Hrn."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vHrn1" {
        \voiceOne
        \tag #'transponierendepartitur {
          \clef "G_8"
          \transpose c c \hornIGloriaWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "G_8"
          \hornIGloriaWindhaagerMesse
        }
      }
      \new Voice = "vHrn2" {
        \voiceTwo
        \tag #'transponierendepartitur {
          \clef "G_8"
          \transpose c c \hornIIGloriaWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "G_8"
          \hornIIGloriaWindhaagerMesse
        }
      }

    >>
    \orgelsystemGloriaWindhaagerMesse
  >>
}