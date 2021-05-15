as yet unclassified
testExtraAPIAttribute
	| callbackID event |
	callbackID := 'this is a callback'.
	event := nil.
	self core pendingRequests at: callbackID put: [:anEvent | event := anEvent].
	self core client send: (TCCRequest newWithType: 'getMe' from: {'@extra' -> callbackID}).
	10 seconds wait.
	self assert: (callbackID = (event at: '@extra'))