drawing
addTitle: aString to: aRectangleMorph

	| titleLable font |
	font := (TextFontReference toFont: (StrikeFont familyName: 'DefaultTextStyle' size: 35)).
	titleLable := TextMorph new
		contents: (aString asText addAttribute: font);
		color: Color white;
		lock.

	aRectangleMorph addMorphCentered: titleLable.