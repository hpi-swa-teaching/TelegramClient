accessing
isAuthStateClosed

	^ (self authState at: '@type') = 'authorizationStateClosed' 