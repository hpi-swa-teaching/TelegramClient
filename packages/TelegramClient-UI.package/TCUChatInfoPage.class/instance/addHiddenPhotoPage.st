as yet unclassified
addHiddenPhotoPage

	self chat hasPhoto ifTrue: [
		self
			photoPage: (TCUChatPhotoPage newWithBounds: self bounds andPhoto: self photo andSize: (self width * 0.9));
			addMorphFront: self photoPage.

		self photoPage hide
	]