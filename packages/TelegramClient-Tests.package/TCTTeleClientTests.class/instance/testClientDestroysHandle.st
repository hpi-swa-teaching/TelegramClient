client
testClientDestroysHandle

	| aClient aHandle aMock  |
	aMock := TCTAbstractTeleClientFactoryMock new createClient: ''.
	aClient := TCCTeleClient newWithClient: aMock.
	aClient free.
	aHandle := aClient specificClient.

	self assert: aClient isAlive not.
	self assert: aClient specificClient isNil.
	self assert: aMock freed.