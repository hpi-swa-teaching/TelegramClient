accessing
getChats

	self client send: (TCCRequest
		newWithType: 'getChats'
		from: {
			'limit' -> '5'.
			'offset_order' -> '9223372036854775807'}).