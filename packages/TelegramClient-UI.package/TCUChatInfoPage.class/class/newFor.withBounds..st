instance creation
newFor: aChat withBounds: bounds

	^ (super newBounds: bounds)
		chat: aChat;
		addContent;
		addInfoBar;
		yourself