testing
testUserEquality

	| user1 user2 |
	user1 := TCTMMocks mockUser1.
	user2 := TCTMMocks mockUser1.

	self assert: user1 equals: user2.