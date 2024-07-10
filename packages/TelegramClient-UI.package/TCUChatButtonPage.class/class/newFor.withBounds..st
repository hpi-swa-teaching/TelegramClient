instance creation
newFor: aChatWindow withBounds: aRectangle

	^ (super newBounds: aRectangle)
		chatWindow: aChatWindow;
		addButtonMenu;
		yourself