accessing
text: aString

	text := TextMorph new
		contents: aString asText;
		lock.

	self text color: Color white.
	self addMorphCentered: text.