utility
getDocumentFor: aDocumentId

	| promise |
	promise := self getDocumentPromiseFor: aDocumentId.
	promise wait.
	^ promise value