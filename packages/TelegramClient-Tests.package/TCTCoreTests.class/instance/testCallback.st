testing
testCallback

	| value event |
	value := 'before'.
	event := TCCEvent newFromTDLibEvent: (JsonObject newFrom: {'@type' -> 'user' . '@extra' -> 'myevent'}).
	self core pendingRequests at: 'myevent' put: [:anEvent | value := 'after'].
	self core handleEvent: event.
	self assert: (value = 'after').
	self assert: ((self core pendingRequests includes: 'myevent') not)