client
testActualClientDestroysHandle

	| aClient aHandle |
	aHandle := TCCTeleClientFactory new createClient: ''.
	aClient := TCCTeleClient newWithClient: aHandle.
	aClient free.

	self assert: aClient isAlive not.
	self assert: aClient specificClient isNil.