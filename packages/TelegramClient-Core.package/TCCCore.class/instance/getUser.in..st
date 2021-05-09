events
getUser: aUserId in: aContext
	self client send: (TCCRequest
		newWithType: 'getUser'
		from: {
		'user_id'->aUserId.
		'@extra'->aContext}).

	