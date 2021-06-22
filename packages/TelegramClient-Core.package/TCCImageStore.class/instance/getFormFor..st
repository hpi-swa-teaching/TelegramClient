accessing
getFormFor: anImageId

	| promise |
	promise := self at: anImageId ifAbsent:
		[self at: anImageId put: Promise new.
		self requestImageFor: anImageId with: (self at: anImageId).
 		self at: anImageId].
	promise wait.
	^ self class imageFormFrom: promise value