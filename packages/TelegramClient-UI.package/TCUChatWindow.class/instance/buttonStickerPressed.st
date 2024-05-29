event handling
buttonStickerPressed

	| stickerWindow |
	self stickerWindow ifNil: [
	stickerWindow := TCUStickerWindow new 
		position: (self position + (700 @ 50));
		selectedChat: self selectedChat.
	self stickerWindow: stickerWindow.
	self addMorph: stickerWindow.
	self stickerButton makeLighter.]
	ifNotNil: [self stickerWindow close.
		self stickerWindow: nil]