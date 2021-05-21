initialization
initializeHandlers

	self
		authHandler: (TCCAuthHandler new
			core: self);
		chatsHandler: (TCCChatsHandler new
			core: self).