drawing
addHiddenInfoPage

	self
		infoPage: (TCUChatInfoPage newFor: self selectedChat withBounds: self bounds);
		addMorphFront: self infoPage.

	self infoPage hide.