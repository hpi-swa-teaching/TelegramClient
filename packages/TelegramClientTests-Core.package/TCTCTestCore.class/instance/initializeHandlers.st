initialization
initializeHandlers

	self
		authenticationHandler: (TCTCTestAuthHandler new
			core: self;
			yourself);
		chatsHandler: (TCCChatsHandler new
			core: self;
			yourself).