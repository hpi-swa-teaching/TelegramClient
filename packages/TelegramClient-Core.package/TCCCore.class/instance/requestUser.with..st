events
requestUser: aNumber with: aString

	self send: (TCCRequest newUser: aNumber with: aString)