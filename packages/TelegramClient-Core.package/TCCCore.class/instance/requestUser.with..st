events
requestUser: aUserId with: aCallbackID

	self send: (TCCRequest
		newWithType: 'getUser'
		from: {
		'user_id'->aUserId.
		'@extra'->aCallbackID})