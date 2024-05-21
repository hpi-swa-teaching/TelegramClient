drawing
addStickerButton

	self sendButton: (TCUButton new
		extent: 50 @ 30;
		text: '+';
		on: #mouseUp send: #buttonSendPressed to: self;
		name: 'sendSticker';
		yourself).
	self inputBar addMorph: self sendButton.