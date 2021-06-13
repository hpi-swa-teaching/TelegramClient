event log querying
chronologicalPositionOf: anEvent

	| position |
	
	position := self eventLog findFirst: [:anotherEvent | anotherEvent = anEvent].
	self assert: (position = 0) not.
	
	^ position