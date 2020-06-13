initialization
addTitle

	self addMorphCentered: (TextMorph new 
		contents: self chatName asText;
		lock).
	