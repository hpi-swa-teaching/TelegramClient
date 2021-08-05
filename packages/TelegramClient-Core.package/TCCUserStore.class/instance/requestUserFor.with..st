utility
requestUserFor: aNumber with: aPromise

	self core
		send: (TCCRequest newUser: aNumber)
		thenDo: [:userEvent | aPromise resolveWith: (TCCUser newFrom: userEvent)].
