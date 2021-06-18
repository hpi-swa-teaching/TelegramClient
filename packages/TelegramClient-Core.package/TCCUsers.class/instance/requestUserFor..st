utility
requestUserFor: aUserId

	| callbackID |
	callbackID := self core
		registerCallback:
			[:userEvent | (self at: aUserId) resolveWith: (TCCUser newFrom: userEvent)].

	self core requestUser: aUserId with: callbackID