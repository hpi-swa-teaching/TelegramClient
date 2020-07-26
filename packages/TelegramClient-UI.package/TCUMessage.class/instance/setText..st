accessing
setText: aString

	self text: (TextMorph new contents: aString).
	self text color: Color white.
	self text lock.
	self addMorphCentered: self text.