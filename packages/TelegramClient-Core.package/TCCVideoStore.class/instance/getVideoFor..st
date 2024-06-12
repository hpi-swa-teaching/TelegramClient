accessing
getVideoFor: aVideoId

	| promise |
	promise := self getVideoPromiseFor: aVideoId.
	promise wait.
	^ promise value