events
handleEvent: anEvent

	self eventChronologicalPositions add: (anEvent -> self chronologicCounter).
	self chronologicCounter: self chronologicCounter + 1.

	self eventLog add: anEvent.
	
	^ super handleEvent: anEvent