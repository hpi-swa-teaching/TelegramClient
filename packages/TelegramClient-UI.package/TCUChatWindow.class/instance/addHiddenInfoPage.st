drawing
addHiddenInfoPage

	self
		infoPage: ((TCUChatInfoPage newBounds: self bounds)
			yourself);
		addMorphFront: self infoPage.
	
	self infoPage hide.