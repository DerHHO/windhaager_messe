\version "2.22.0"

chorpartiturKyrieWindhaagerMesse = {
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
            \transpose c c \altNotenKyrieWindhaagerMesse
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenKyrieWindhaagerMesse
          }
        }
        \new Lyrics \lyricsto "valt" \altTextKyrieWindhaagerMesse

      >>
    >>
  >>
}
orgelsystemKyrieWindhaagerMesse = {
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
              \transpose c c \orgelRHNotenKyrieWindhaagerMesse
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenKyrieWindhaagerMesse
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
              \transpose c c \orgelLHNotenKyrieWindhaagerMesse
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenKyrieWindhaagerMesse
            }
          }

        >>

      >>
    >>
  >>

}

scoreKyrieWindhaagerMesse = {
  <<
    \chorpartiturKyrieWindhaagerMesse


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
          \transpose c c \hornIKyrieWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "G_8"
          \hornIKyrieWindhaagerMesse
        }
      }
      \new Voice = "vHrn2" {
        \voiceTwo
        \tag #'transponierendepartitur {
          \clef "G_8"
          \transpose c c \hornIIKyrieWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "G_8"
          \hornIIKyrieWindhaagerMesse
        }
      }

    >>
    \orgelsystemKyrieWindhaagerMesse
  >>
}