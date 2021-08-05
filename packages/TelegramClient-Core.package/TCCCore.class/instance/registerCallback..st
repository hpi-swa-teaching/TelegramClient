utility
registerCallback: aClosure

	| callbackId |
	callbackId := self generateCallbackID.
	self pendingRequests at: callbackId put: aClosure.
	^ callbackId
