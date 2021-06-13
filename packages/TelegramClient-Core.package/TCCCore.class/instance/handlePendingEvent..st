event handling
handlePendingEvent: anEvent

	| extra |
	extra := (anEvent at: '@extra') asString.
	(self pendingRequests at: extra) value: anEvent.
	self pendingRequests removeKey: extra ifAbsent: []