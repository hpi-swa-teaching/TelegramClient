testing
testClientDestroysHandle

	| aClient aMock |
	aMock := TCTFFIClientMock new.
	aClient := TCCTeleClient newWithClient: aMock.
	aClient free.

	self assert: aClient isAlive not.
	self assert: aClient specificClient isNil.
	self assert: aMock freed.