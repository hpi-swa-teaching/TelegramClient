accessing
text: aString

	text := TextMorph new
		contents: aString asText;
		color: Color white;
		lock;
		yourself.

	self addMorphCentered: text.