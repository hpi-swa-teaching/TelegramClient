events
getOwnProfile

	self
		send: TCCRequest newGetMe
		thenDo: [:aUserEvent | self setUserId: aUserEvent].