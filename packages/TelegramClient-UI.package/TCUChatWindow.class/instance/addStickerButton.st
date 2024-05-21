drawing
addStickerButton

	self stickerButton: (TCUButton new
		extent: 50 @ 30;
		text: '+';
		on: #mouseUp send: #buttonStickerPressed to: self;
		name: 'sendSticker';
		yourself).
	self inputBar addMorph: self stickerButton.