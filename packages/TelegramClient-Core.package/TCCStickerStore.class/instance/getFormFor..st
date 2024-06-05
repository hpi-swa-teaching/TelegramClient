accessing
getFormFor: aStickerId

	| promise |
	
	promise := self getFormPromiseFor: aStickerId.
	promise wait.
	^ promise value