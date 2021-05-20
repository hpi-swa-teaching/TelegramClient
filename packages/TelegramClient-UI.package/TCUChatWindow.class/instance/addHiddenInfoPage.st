drawing
addHiddenInfoPage

	self
		infoPage: ((TCUChatInfoPage newBounds: bounds)
			hide;
			yourself);
		addMorphFront: self infoPage.