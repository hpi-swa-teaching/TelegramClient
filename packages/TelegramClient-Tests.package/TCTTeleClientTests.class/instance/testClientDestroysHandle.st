client
testClientDestroysHandle

	| aClient aMock |
	aMock := TCTAbstractTeleClientFactoryMock new createClient: ''.
	aClient := TCCTeleClient newWithClient: aMock.
	aClient free.

	self assert: aClient isAlive not.
	self assert: aClient specificClient isNil.
	self assert: aMock freed.