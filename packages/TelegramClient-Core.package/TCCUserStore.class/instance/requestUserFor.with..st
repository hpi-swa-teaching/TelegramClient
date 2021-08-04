utility
requestUserFor: aNumber with: aPromise

	| callbackID |
	callbackID := self core
		registerCallback:
			[:userEvent | aPromise resolveWith: (TCCUser newFrom: userEvent)].

	self core requestUser: aNumber with: callbackID.