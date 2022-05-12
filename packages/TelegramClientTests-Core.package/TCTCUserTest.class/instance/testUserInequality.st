testing
testUserInequality

	| user1 user2 |
	user1 := TCTMMocks mockUser1.
	user2 := TCTMMocks mockUser1.
	user2 id: user2 id + 1.

	self deny: user1 = user2.