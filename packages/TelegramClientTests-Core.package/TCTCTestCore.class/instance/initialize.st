initialization
initialize

	self eventLog: OrderedCollection new.
	self eventChronologicalPositions: Dictionary new.
	self chronologicCounter: 0.
	super initialize.