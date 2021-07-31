initialization
initializeHandlers

	self
		authenticationHandler: (TCTCTestAuthHandler new core: self);
		chatsHandler: (TCCChatsHandler new core: self).