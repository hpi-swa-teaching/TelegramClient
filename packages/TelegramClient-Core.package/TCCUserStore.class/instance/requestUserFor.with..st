utility
requestUserFor: aUserId with: aPromise

	| callbackId |
	callbackId := self core
		registerCallback:
			[:userEvent | aPromise resolveWith: (TCCUser newFrom: userEvent)].

	self sendUserRequestFor: aUserId with: callbackId.