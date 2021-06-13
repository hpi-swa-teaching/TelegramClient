events
handleEvent: anEvent

	self eventLog add: anEvent.
	^ super handleEvent: anEvent