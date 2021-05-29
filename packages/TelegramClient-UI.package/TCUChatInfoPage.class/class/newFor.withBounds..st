instance creation
newFor: aChat withBounds: bounds

	^ (super newBounds: bounds)
		chat: aChat;
		addInfoBar;
		addContent;
		yourself