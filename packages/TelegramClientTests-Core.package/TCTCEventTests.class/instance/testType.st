testing
testType

	| event |

	event := TCCEvent newFromTdlibEvent: (Dictionary newFrom: {'@type' -> 'authentication'. 'code' -> 200}).

	self assert: 'authentication' equals: event type.
	self assert: (event includesKey: 'type') not.