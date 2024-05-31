event handling
buttonStickerPressed

	| stickerWindow |
	self stickerWindow ifNil: [
	stickerWindow := TCUStickerWindow new 
		position: (self position + (700 @ 50));
		selectedChat: self selectedChat;
		core: (self owner core).
	stickerWindow collectInstalledStickers.
	self stickerWindow: stickerWindow.
	self addMorph: stickerWindow.
	self stickerButton makeLighter.]
	ifNotNil: [self stickerWindow close.
		self stickerWindow: nil]