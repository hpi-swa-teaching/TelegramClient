testing
testExtraAPIAttribute

	| callbackID event |
	callbackID := 'this is a callback'.
	event := nil.
	self sharedCore pendingRequests at: callbackID put: [:anEvent | event := anEvent].
	self sharedCore client send: (TCCRequest newWithType: 'getMe' from: {'@extra' -> callbackID}).
	self waitUntil: [event notNil].
	self assert: callbackID equals: (event at: '@extra')