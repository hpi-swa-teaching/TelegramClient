accessing
text: aString

	text := TextMorph new
		contents: aString asText;
		lock.

	self addMorphCentered: text.