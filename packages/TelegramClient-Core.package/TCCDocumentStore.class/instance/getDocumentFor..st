as yet unclassified
getDocumentFor: aDocumentId

	| promise |
	promise := self getDocumentPromiseFor: aDocumentId.
	promise wait.
	^ promise value