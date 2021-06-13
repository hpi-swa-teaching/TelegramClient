event log querying
receiveOrderOfEventSatisfying: aBlock

	| position |
	
	position := self eventLog findFirst: aBlock.
	self assert: (position = 0) not.
	
	^ position