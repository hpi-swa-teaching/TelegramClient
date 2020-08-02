library calls
getChats

	self client send: (TCCRequest
		newWithType: 'getChats'
		from: {
			'limit' -> 1000.
			'offset_order' -> '9223372036854775807'}).