accessing
showMessages

	self
		clearMessages;
		addMessages.
	self messages ifNotEmpty: [self scrollToShow: self messages last].