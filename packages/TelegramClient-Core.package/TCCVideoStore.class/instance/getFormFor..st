accessing
getFormFor: aThumbnailId

	| promise |
	promise := self getFormPromiseFor: aThumbnailId.
	promise wait.
	^ promise value