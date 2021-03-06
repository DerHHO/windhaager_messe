\version "2.22.0"

chorpartiturAgnusWindhaagerMesse = {
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
            \transpose c c \altNotenAgnusWindhaagerMesse
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenAgnusWindhaagerMesse
          }
        }
        \new Lyrics \lyricsto "valt" \altTextAgnusWindhaagerMesse

      >>
    >>
  >>
}
orgelsystemAgnusWindhaagerMesse = {
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
              \transpose c c \orgelRHNotenAgnusWindhaagerMesse
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenAgnusWindhaagerMesse
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
              \transpose c c \orgelLHNotenAgnusWindhaagerMesse
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenAgnusWindhaagerMesse
            }
          }

        >>

      >>
    >>
  >>

}

scoreAgnusWindhaagerMesse = {
  <<
    \chorpartiturAgnusWindhaagerMesse


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
          \transpose c c \hornIAgnusWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "G_8"
          \hornIAgnusWindhaagerMesse
        }
      }
      \new Voice = "vHrn2" {
        \voiceTwo
        \tag #'transponierendepartitur {
          \clef "G_8"
          \transpose c c \hornIIAgnusWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "G_8"
          \hornIIAgnusWindhaagerMesse
        }
      }

    >>


    %{\new Staff \with {
      instrumentName = "H??rner (F)"
      shortInstrumentName = "geninstr"
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vHoerner_F" {
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \hornIIAgnusWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \hornIIAgnusWindhaagerMesse
        }
      }

    >>%}
    \orgelsystemAgnusWindhaagerMesse
  >>
}