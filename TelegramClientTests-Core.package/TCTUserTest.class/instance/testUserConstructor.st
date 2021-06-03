testing
testUserConstructor

	| event user |
	event := TCCEvent newFromTDLibEvent: (JsonObject newFrom: {
		'@type' -> 'user'.
		'id' -> '1'.
		'first_name' -> 'Test'.
		'last_name' -> 'User'.
		'username' -> 'testuser'
	}).
	user := TCCUser newFrom: event.
	self assert: 'Test' equals: user firstName. 
	self assert: 'User' equals: user lastName. 
	self assert: 'testuser' equals: user username. 
	self assert: 'Test User' equals: user fullName. 
