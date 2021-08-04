drawing
addWelcomeMessage

	self
		welcomeMessage: (TextMorph new
			contents: 'Welcome!' asText;
			lock;
			yourself);
		addMorphCentered: self welcomeMessage.