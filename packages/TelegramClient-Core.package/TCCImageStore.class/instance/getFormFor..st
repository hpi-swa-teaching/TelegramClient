accessing
getFormFor: aNumber

	| promise |
	promise := self at: aNumber ifAbsent:
		[self at: aNumber put: Promise new.
		self requestImageFor: aNumber with: (self at: aNumber).
 		self at: aNumber].
	promise wait.
	^ self class imageFormFrom: promise value