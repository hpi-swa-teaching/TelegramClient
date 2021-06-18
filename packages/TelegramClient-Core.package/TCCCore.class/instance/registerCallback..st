utility
registerCallback: aClosure

	| callbackID |
	callbackID := self generateCallbackID.
	self pendingRequests at: callbackID put: aClosure.
	^ callbackID