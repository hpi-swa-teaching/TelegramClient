event handling
buttonStickerPressed

	| stickerWindow |
	
	stickerWindow := TCUStickerWindow new position: (self position + (520 @ 240)).
	self addMorph: stickerWindow.
	self stickerButton makeLighter.