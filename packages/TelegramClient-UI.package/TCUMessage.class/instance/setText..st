accessing
setText: aString

	self text: (TextMorph new contents: aString).
	self addMorphCentered: self text.