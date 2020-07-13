as yet unclassified
testAuthStateIsAwaitingPhoneNumber

	| core |
	core := TCTTestCore new.
	[core authHandler isAwaitingTDLibParams] whileFalse: [].
	[core authHandler isAwaitingDBEncryptionKey] whileFalse: [].
	[core authHandler isAwaitingPhoneNumber] whileFalse: [].
	self assert: core authHandler isAwaitingPhoneNumber.
	core authHandler logout.