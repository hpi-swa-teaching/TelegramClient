utility
registerCallback: aClosure

	| callbackID |
	
	callbackID := self generateCallbackId.
	self pendingRequests at: callbackID put: aClosure.
	^ callbackID