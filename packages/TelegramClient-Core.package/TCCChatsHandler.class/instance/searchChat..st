library calls
searchChat: aUsername

	self core send: (TCCRequest
		newWithType: 'searchPublicChat'
		from: {'username' -> aUsername}).