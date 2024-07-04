drawing
addStickerButton

	self stickerButton: (TCUButton new
		extent: 100 @ 30;
		text: 'Sticker';
		on: #mouseUp send: #buttonStickerPressed to: self;
		name: 'sendSticker';
		yourself).
	self buttonMenu addMorph: self stickerButton.