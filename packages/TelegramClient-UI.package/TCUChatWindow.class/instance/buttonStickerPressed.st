event handling
buttonStickerPressed

	| stickerWindow |
	
	stickerWindow := TCUStickerWindow new 
		position: (self position + (700 @ 50));
		selectedChat: self selectedChat.
	self addMorph: stickerWindow.
	self stickerButton makeLighter.