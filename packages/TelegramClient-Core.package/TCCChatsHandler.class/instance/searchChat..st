library calls
searchChat: aUsername

	self client send: (TCCRequest
		newWithType: 'searchPublicChat'
		from: {'username' -> aUsername}).