initialize-release
initialize: anActualClient

	self specificClient: anActualClient.
	self handle: self specificClient create.
	
	self authHandler: (AuthHandler new client: self).
	
	[self receiveLoop] fork.