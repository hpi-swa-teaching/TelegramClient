events
getUser: aUserId with: aCallbackID
	self client send: (TCCRequest
		newWithType: 'getUser'
		from: {
		'user_id'->aUserId.
		'@extra'->aCallbackID}).

	