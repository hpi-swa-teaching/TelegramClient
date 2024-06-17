as yet unclassified
newFor: aChat withBounds: aRectangle

	^ (super newBounds: aRectangle)
		chat: aChat;
		addTypeOption;
		yourself