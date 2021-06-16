events
getOwnProfile

	self pendingRequests at: 'getMe' put: [:aUserEvent | self setUserID: aUserEvent].
	self client send: (TCCRequest
		newWithType: 'getMe'
		from: {'@extra' -> 'getMe'})