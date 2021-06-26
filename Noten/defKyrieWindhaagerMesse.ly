
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
      instrumentName = "Hörner (C)"
      shortInstrumentName = "Hrn."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vHrn1" {
        \voiceOne
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \hornIKyrieWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \hornIKyrieWindhaagerMesse
        }
      }
      \new Voice = "vHrn2" {
        \voiceTwo
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \hornIIKyrieWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \hornIIKyrieWindhaagerMesse
        }
      }

    >>
    \orgelsystemKyrieWindhaagerMesse
  >>
}