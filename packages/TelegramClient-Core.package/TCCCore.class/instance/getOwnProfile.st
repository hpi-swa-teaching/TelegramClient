events
getOwnProfile

	self pendingRequests at: 'getMe' put: [:aUserEvent | self setUserID: aUserEvent].
	self send: (TCCRequest
		newWithType: 'getMe'
		from: {'@extra' -> 'getMe'})