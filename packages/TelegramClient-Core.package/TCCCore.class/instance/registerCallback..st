utility
registerCallback: aClosure

	| callbackId |
	callbackId := self generateCallbackId.
	self pendingRequests at: callbackId put: aClosure.
	^ callbackId
