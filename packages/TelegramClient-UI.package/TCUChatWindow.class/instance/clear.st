drawing
clear

	self titleBar delete.
	self inputBar hide.
	self welcomeMessage show.
	self chatMessageList hide.
	self infoPage hide.
	self pollEditor ifNotNil: [self pollEditor abandon. 
		self pollEditor: nil].
	self buttonMenu ifNotNil: [self buttonMenu abandon. 
		self buttonMenu: nil].
	self stickerWindow ifNotNil: [self stickerWindow close.
		self stickerWindow: nil].
	self stickerWindow ifNotNil: [self stickerWindow close.
		self stickerWindow: nil].