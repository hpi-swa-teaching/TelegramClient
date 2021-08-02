event handling
handlePendingEvent: anEvent

	| callbackId |
	callbackId := anEvent at: '@extra'.
	(self pendingRequests at: callbackId) value: anEvent.
	self pendingRequests removeKey: callbackId ifAbsent: []