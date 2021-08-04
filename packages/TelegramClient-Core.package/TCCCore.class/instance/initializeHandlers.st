initialization
initializeHandlers

	self
		authenticationHandler: (TCCAuthenticationHandler new
			core: self;
			yourself);
		chatsHandler: (TCCChatsHandler new
			core: self;
			yourself).