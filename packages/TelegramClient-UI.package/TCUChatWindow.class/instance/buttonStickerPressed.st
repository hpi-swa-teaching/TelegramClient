event handling
buttonStickerPressed

	| stickerWindow |
	
	stickerWindow := TCUStickerWindow new position: (self position + (700 @ 50)).
	self addMorph: stickerWindow.
	self stickerButton makeLighter.