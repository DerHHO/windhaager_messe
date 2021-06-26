
chorpartiturSanctusWindhaagerMesse = {
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
            \transpose c c \altNotenSanctusWindhaagerMesse
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenSanctusWindhaagerMesse
          }
        }
        \new Lyrics \lyricsto "valt" \altTextSanctusWindhaagerMesse

      >>
    >>
  >>
}
orgelsystemSanctusWindhaagerMesse = {
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
              \transpose c c \orgelRHNotenSanctusWindhaagerMesse
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenSanctusWindhaagerMesse
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
              \transpose c c \orgelLHNotenSanctusWindhaagerMesse
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenSanctusWindhaagerMesse
            }
          }

        >>

      >>
    >>
  >>

}

scoreSanctusWindhaagerMesse = {
  <<
    \chorpartiturSanctusWindhaagerMesse


    \new Staff \with {
      instrumentName = "Hörner (C)"
      shortInstrumentName = "Hrn."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vHorn1" {
        \voiceOne
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \hornISanctusWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \hornISanctusWindhaagerMesse
        }
      }
      \new Voice = "vHorn2" {
        \voiceTwo
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \hornIISanctusWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \hornIISanctusWindhaagerMesse
        }
      }

    >>
    \orgelsystemSanctusWindhaagerMesse
  >>
}