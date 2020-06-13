initialization
initializeHandlers

	self
		authHandler: (TCCTestAuthHandler new app: self);
		chatsHandler: (TCCChatsHandler new app: self).