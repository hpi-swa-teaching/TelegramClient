drawing
addHiddenPhotoPage

	self chat hasPhoto ifTrue: [
		self
			photoPage: (TCUChatPhotoPage newWithBounds: self bounds andPhoto: self photo andSize: (self width * self class defaultPhotoPageSizeMultiplicator));
			addMorphFront: self photoPage.

		self photoPage hide
	]