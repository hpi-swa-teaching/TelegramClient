utility
requestUserFor: aUserId with: aPromise

	| callbackID |
	callbackID := self core
		registerCallback:
			[:userEvent | aPromise resolveWith: (TCCUser newFrom: userEvent)].

	self core requestUser: aUserId with: callbackID