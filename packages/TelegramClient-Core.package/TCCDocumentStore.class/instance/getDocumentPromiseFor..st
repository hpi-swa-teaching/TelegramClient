as yet unclassified
getDocumentPromiseFor: aDocumentId

	| promise |
	promise := self at: aDocumentId ifAbsent: [
		self at: aDocumentId put: Promise new.
		self requestFileFor: aDocumentId with: (self at: aDocumentId).
 		self at: aDocumentId
	].
	^ promise