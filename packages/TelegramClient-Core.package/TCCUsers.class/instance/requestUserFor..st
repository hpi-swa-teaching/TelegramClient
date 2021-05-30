utility
requestUserFor: aUserId

	self core 
		registerCallback: 
			[:userEvent | (self at: aUserId) resolveWith: (TCCUser newFrom: userEvent)]
		with: (aUserId asString).

	self core requestUser: aUserId with: aUserId