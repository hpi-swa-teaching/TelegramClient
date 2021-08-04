testing
testExtraApiAttribute

	| callbackId event |
	callbackId := 'this is a callback'.
	event := nil.
	self sharedCore pendingRequests at: callbackId put: [:anEvent | event := anEvent].
	self sharedCore send: (TCCRequest newGetMeWith: callbackId).

	self waitUntil: [event notNil].
	self assert: callbackId equals: (event at: '@extra')