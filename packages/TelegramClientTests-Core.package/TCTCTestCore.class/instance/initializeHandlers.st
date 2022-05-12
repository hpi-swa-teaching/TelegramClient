initialization
initializeHandlers

	self
		authenticationHandler: (TCTCTestAuthenticationHandler new
			core: self;
			yourself);
		chatsHandler: (TCCChatsHandler new
			core: self;
			yourself).