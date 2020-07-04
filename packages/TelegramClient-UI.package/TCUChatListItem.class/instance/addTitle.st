initialization
addTitle

	| text |
	text := (self chatName asText) addAttribute: TextEmphasis bold.

	self addMorphCentered: (TextMorph new
		contents: text;
		lock).