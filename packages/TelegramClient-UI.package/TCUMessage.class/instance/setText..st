accessing
setText: aString

	self text: (TextMorph new contents: aString).
	self text lock.
	self addMorphCentered: self text.