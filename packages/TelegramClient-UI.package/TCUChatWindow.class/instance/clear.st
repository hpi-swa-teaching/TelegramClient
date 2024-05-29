drawing
clear

	self titleBar delete.
	self inputBar hide.
	self welcomeMessage show.
	self chatMessageList hide.
	self infoPage hide.
	self stickerWindow ifNotNil: [self stickerWindow close.
		self stickerWindow: nil].