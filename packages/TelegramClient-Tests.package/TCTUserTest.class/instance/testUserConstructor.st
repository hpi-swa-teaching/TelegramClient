as yet unclassified
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
	self assert: (
		(user firstname = 'Test')
		and: (user lastname = 'User')
		and: (user username = 'testuser')
		and: (user fullName = 'Test User')
	)
	