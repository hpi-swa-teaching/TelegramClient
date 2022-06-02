accessing
getFormPromiseFor: anImageId

	| promise |
	promise := self at: anImageId ifAbsent: [
		self at: anImageId put: Promise new.
		self requestImageFor: anImageId with: (self at: anImageId).
 		self at: anImageId
	].
	^ promise >>= [:aPath | self class imageFormFrom: promise value]