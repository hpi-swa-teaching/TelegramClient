accessing
getUserFor: aUserId

	| promise |
	promise := self at: aUserId ifAbsent:
		[self at: aUserId put: Promise new.
		self requestUserFor: aUserId.
 		self at: aUserId].
	promise wait.
	^ (promise value)