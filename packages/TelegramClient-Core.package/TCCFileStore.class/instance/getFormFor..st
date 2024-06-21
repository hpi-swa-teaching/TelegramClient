utility
getFormFor: anImageId

	| promise |
	promise := self getFormPromiseFor: anImageId.
	promise wait.
	^ promise value