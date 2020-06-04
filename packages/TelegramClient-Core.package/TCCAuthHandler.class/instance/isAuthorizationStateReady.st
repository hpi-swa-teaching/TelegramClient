initialize
isAuthorizationStateReady

	^ (self authState at: '@type') = 'authorizationStateReady' 

	