
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
      instrumentName = "Hörner (C)"
      shortInstrumentName = "Hrn."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vHoerner_C" {
        \voiceOne
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \hornIAgnusWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \hornIAgnusWindhaagerMesse
        }
      }
      \new Voice = "vHoerner_C" {
        \voiceTwo
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \hornIIAgnusWindhaagerMesse
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \hornIIAgnusWindhaagerMesse
        }
      }

    >>


    %{\new Staff \with {
      instrumentName = "Hörner (F)"
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