initialization
isAuthorizationStateReady

	^ (self authState at: '@type') = 'authorizationStateReady' 