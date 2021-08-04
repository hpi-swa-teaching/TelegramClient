accessing
getUserFor: aNumber

	| promise |
	promise := self at: aNumber ifAbsent:
		[self at: aNumber put: Promise new.
		self requestUserFor: aNumber with: (self at: aNumber).
 		self at: aNumber].
	promise wait.
	^ promise value