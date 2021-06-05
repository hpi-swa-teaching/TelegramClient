as yet unclassified
ensureAwaitingPhoneNumber

	[self core authHandler isAwaitingPhoneNumber]
			whileFalse: [1 seconds wait].