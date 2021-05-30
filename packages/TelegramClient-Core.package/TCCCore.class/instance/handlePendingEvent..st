event handling
handlePendingEvent: anEvent
	
	| extra |
	extra := anEvent at: '@extra'.
	(self pendingRequests at: extra) value: anEvent.
	self pendingRequests removeKey: extra ifAbsent: []