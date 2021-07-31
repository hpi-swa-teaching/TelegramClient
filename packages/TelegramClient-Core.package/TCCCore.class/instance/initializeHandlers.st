initialization
initializeHandlers

	self
		authenticationHandler: (TCCAuthenticationHandler new
			core: self);
		chatsHandler: (TCCChatsHandler new
			core: self).