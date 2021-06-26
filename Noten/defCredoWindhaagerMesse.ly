
chorpartiturCredoWindhaagerMesse = {
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
					\transpose c c \altNotenCredoWindhaagerMesse
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\altNotenCredoWindhaagerMesse
				}
			}
			
		>>
	>>
>>
}
orgelsystemCredoWindhaagerMesse = {
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
					\transpose c c \orgelRHNotenCredoWindhaagerMesse
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\orgelRHNotenCredoWindhaagerMesse
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
					\transpose c c \orgelLHNotenCredoWindhaagerMesse
				}
				\tag #'klingendepartitur {
					\clef "bass"
					\orgelLHNotenCredoWindhaagerMesse
				}
			}
			
		>>

>>
>>
	>>

}

scoreCredoWindhaagerMesse = {	<<\chorpartiturCredoWindhaagerMesse


		\new Staff \with {
			instrumentName = "Hörner (C)"
			shortInstrumentName = "geninstr"
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vHoerner_C" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c c \hornICredoWindhaagerMesse
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\hornICredoWindhaagerMesse
				}
			}
			
		>>


		\new Staff \with {
			instrumentName = "Hörner (F)"
			shortInstrumentName = "geninstr"
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vHoerner_F" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c c \hornIICredoWindhaagerMesse
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\hornIICredoWindhaagerMesse
				}
			}
			
		>>
\orgelsystemCredoWindhaagerMesse
	>>
}