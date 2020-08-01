initialization
initializeHandlers

	self
		authHandler: (TCCAuthHandler new
			app: self);
		chatsHandler: (TCCChatsHandler new
			app: self; 
			messageLimit: 15;
			blocked: false).