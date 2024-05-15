instance creation
newFor: aChat withBounds: aRectangle

	^ (super newBounds: aRectangle)
		chat: aChat;
		addInfoBar;
		addContent;
		addHiddenPhotoPage;
		yourself