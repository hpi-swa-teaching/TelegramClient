testing
testCallback
	| value event |
	value := 'before'.
	event := TCCEvent newFromTDLibEvent: (JsonObject newFrom: {'@type' -> 'user' . '@extra' -> 'myevent'}).
	self core pendingMessages at: 'myevent' put: [:anEvent | value := 'after'].
	self core handleEvent: event.
	self assert: (value = 'after')

