drawing
clear

	self titleBar delete.
	self inputBar hide.
	self welcomeMessage show.
	self chatMessageList hide.
	self infoPage hide.
	self pollEditor ifNotNil: [self pollEditor abandon. 
		self pollEditor: nil].
	self stickerWindow ifNotNil: [self stickerWindow close.
		self stickerWindow: nil].