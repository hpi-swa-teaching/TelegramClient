accessing
isAwaitingDBEncryptionKey

	^ (self authState at: '@type') = 'authorizationStateWaitEncryptionKey'