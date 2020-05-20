as yet unclassified
initialize

	| specificClient |
	specificClient := TeleClientFactory new createClient: Smalltalk platformName.
	
	self client: (TeleClient new initialize: specificClient).
	self authUI: (TCAuthentication new app: self client).
	self authHandler: (AuthHandler new 
		client: self client;
		app: self).
	
	
	[self receiveLoop] fork.