as yet unclassified
initializeHandlers

	self
		authHandler: (TCTTestAuthHandler new app: self);
		chatsHandler: (TCCChatsHandler new app: self).