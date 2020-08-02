accessing
addTextLabel

	self addMorphCentered: (TextMorph new
		contents: (self text truncateWithElipsisTo: 25) asText;
		lock).