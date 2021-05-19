utility
requestUserFor: aUserId

	self core registerCallback:
		[:userEvent | (self at: aUserId) resolveWith: (TCCUser newFrom: userEvent)]
		with: aUserId.

	self core getUser: aUserId with: aUserId