accessing
addTextLabel

	| shortText |
	shortText := (self text truncateTo: 25), ' ...'.
	
	self addMorphCentered: (TextMorph new
		contents: shortText asText;
		lock).