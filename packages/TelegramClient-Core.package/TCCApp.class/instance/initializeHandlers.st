initialization
initializeHandlers

	self
		authHandler: (TCCAuthHandler new app: self);
		messageHandler: (TCCMessageHandler new app: self).