testing
testCachesRequests

	| user1 user2 |
	user1 := nil.
	user2 := nil.

	self mockTeleClient onRequestType: 'getUser' respond: TCTMMocks mockUserJson1.

	[user1 := self core users getUserFor: TCTMMocks mockUser1 id.] fork.
	1 seconds wait.
	
	self assert: user1 notNil.
	[user2 := self core users getUserFor: TCTMMocks mockUser1 id.] fork.
	1 seconds wait.

	self assert: user1 == user2.