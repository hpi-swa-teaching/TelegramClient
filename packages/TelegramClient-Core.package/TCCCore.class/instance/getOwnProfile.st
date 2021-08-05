events
getOwnProfile

	self
		send: TCCRequest newGetMe
		thenDo: [:aUserEvent | self setUserID: aUserEvent].