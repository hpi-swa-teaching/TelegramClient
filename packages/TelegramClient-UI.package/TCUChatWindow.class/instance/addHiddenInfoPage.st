drawing
addHiddenInfoPage

	self
		infoPage: ((TCUChatInfoPage newBounds: self bounds)
			hide;
			yourself);
		addMorphFront: self infoPage.