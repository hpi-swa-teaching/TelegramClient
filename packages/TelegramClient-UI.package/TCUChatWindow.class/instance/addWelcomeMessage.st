initialization
addWelcomeMessage

	self 
		welcomeMessage: (TextMorph new
			contents: 'Welcome!' asText);
		addMorphCentered: self welcomeMessage.