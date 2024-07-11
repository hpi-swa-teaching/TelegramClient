drawing
addStickerButton

	self stickerButton: (TCUButton new
		text: 'Sticker';
		on: #mouseUp send: #buttonStickerPressed to: self chatWindow;
		name: 'sendSticker';
		yourself).
	self buttonMenu addMorph: self stickerButton.