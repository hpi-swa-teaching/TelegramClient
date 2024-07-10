instance creation
newFor: aChat withBounds: aRectangle from: aChatWindow

	^ (super newBounds: aRectangle)
		chat: aChat;
		chatWindow: aChatWindow;
		addButtonMenu;
		yourself