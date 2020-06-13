accessing
addTitle: aString to: aMorph

	| titleLable font |
	font := (TextFontReference toFont:  (StrikeFont familyName: 'DefaultTextStyle' size: 35)).
	titleLable := TextMorph new
		contents: (aString asText addAttribute: font);
		color: Color white.
		
	aMorph addMorphCentered: titleLable.