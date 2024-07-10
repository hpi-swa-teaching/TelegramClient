instance creation
newFor: aChat withBounds: aRectangle andSize: aSize

	^ (super newBounds: aRectangle)
		chat: aChat;
		photoSize: aSize;
		addPhoto;
		yourself