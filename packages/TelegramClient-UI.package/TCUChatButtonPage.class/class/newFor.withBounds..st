as yet unclassified
newFor: aChatWindow withBounds: aRectangle

	^ (super newBounds: aRectangle)
		chatWindow: aChatWindow;
		addButtonMenu;
		yourself