initialization
addTitle: aString 

	| font |

	font := (TextFontReference toFont: (StrikeFont familyName: 'DefaultTextStyle' size: 35)).

	self addMorphCentered: (TextMorph new
		contents: (aString asText addAttribute: font);
		color: Color white;
		lock).