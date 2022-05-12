drawing
setText

	self addMorph: (TextMorph new
		contents: self text;
		lock;
		center: (self position + ((self width / 2) @ self class defaultOffset));
		yourself).