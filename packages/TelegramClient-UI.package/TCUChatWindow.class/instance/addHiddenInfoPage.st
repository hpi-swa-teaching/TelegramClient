drawing
addHiddenInfoPage

	self
		infoPage: ((TCUChatInfoPage newFor: self selectedChat withBounds: self bounds)
			hide;
			yourself);
		addMorphFront: self infoPage.