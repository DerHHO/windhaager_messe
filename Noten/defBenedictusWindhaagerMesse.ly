\version "2.22.0"

chorpartiturBenedictusWindhaagerMesse = {
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
            \transpose c c \altNotenBenedictusWindhaagerMesse
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenBenedictusWindhaagerMesse
          }
        }
        \new Lyrics \lyricsto "valt" \altTextBenedictusWindhaagerMesse

      >>
    >>
  >>
}
orgelsystemBenedictusWindhaagerMesse = {
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
              \transpose c c \orgelRHNotenBenedictusWindhaagerMesse
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenBenedictusWindhaagerMesse
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
              \transpose c c \orgelLHNotenBenedictusWindhaagerMesse
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenBenedictusWindhaagerMesse
            }
          }

        >>

      >>
    >>
  >>

}

scoreBenedictusWindhaagerMesse = {
  <<
    \chorpartiturBenedictusWindhaagerMesse


    \new Staff \with {
      instrumentName = "Hörner (C)"
      shortInstrumentName = "Hrn."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vHrn1" {
        \voiceOne
        \tag #'transponierendepartitur {
          \clef "G_8"
          \transpose c c \hornIBenedictusWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "G_8"
          \hornIBenedictusWindhaagerMesse
        }
      }
      \new Voice = "vHrn2" {
        \voiceTwo
        \tag #'transponierendepartitur {
          \clef "G_8"
          \transpose c c \hornIIBenedictusWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "G_8"
          \hornIIBenedictusWindhaagerMesse
        }
      }

    >>
    \orgelsystemBenedictusWindhaagerMesse
  >>
}