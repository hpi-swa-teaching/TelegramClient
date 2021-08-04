utility
requestImageFor: aNumber with: aPromise

	| callbackID |
	callbackID := self core
		registerCallback:
			[:imageEvent | aPromise resolveWith: (self class extractPathFrom: imageEvent)].

	self core requestFile: aNumber with: callbackID