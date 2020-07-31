initialization
addTitle

	| text |
	text := (self chatName asText) addAttribute: TextEmphasis bold.

	self addMorph: (TextMorph new
		position: (self topLeft + self titleOffset);
		contents: text;
		lock).