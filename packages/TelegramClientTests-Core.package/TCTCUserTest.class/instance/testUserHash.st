testing
testUserHash

	| user1 user2 |
	user1 := TCTMMocks mockUser1.
	user2 := TCTMMocks mockUser1.

	self assert: user1 hash equals: user2 hash.