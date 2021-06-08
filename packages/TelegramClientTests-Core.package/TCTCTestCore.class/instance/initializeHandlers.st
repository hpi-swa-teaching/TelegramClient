initialization
initializeHandlers

	self
		authHandler: (TCTCTestAuthHandler new core: self);
		chatsHandler: (TCCChatsHandler new core: self).