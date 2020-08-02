testing
testType

	| event |
	
	event := TCCEvent newFromTDLibEvent: (Dictionary newFrom: {'@type' -> 'authentication'. 'code' -> 200}).
	
	self assert: event type equals: 'authentication'.
	self assert: (event includesKey: 'type') not.