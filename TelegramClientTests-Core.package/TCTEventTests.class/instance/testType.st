testing
testType

	| event |
	
	event := TCCEvent newFromTDLibEvent: (Dictionary newFrom: {'@type' -> 'authentication'. 'code' -> 200}).
	
	self assert: 'authentication' equals: event type.
	self assert: (event includesKey: 'type') not.