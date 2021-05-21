initialization
initializeHandlers

	self
		authHandler: (TCTTestAuthHandler new core: self);
		chatsHandler: (TCCChatsHandler new core: self).