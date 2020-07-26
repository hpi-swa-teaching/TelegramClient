initialization
addWelcomeMessage

	self
		welcomeMessage: (TextMorph new
			contents: 'Welcome!' asText;
			lock);
		addMorphCentered: self welcomeMessage.