as yet unclassified
isAwaitingDBEncryptionKey

	^ (self authState at: '@type') = 'authorizationStateWaitEncryptionKey'