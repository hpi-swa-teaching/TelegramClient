as yet unclassified
addHiddenPhotoPage

	self
		photoPage: (TCUChatPhotoPage newFor: chat withBounds: self bounds andSize: (self width * 0.75));
		addMorphFront: self photoPage.

	self photoPage hide.