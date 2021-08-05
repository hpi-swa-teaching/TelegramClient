utility
requestUserFor: aNumber with: aPromise

	self core
		send: (TCCRequest newUser: aUserId)
		thenDo: [:userEvent | aPromise resolveWith: (TCCUser newFrom: userEvent)].
