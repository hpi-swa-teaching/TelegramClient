as yet unclassified
newFor: aChat withBounds: aRectangle

	^ (super newBounds: aRectangle)
		chat: aChat;
		allInputFields: (OrderedCollection new);
		addTypeOption;
		yourself