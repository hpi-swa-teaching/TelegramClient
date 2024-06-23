utility
getFormPromiseFor: anImageId

	| promise |
	promise := self at: anImageId ifAbsent: [
		self at: anImageId put: Promise new.
		self requestFileFor: anImageId with: (self at: anImageId).
 		self at: anImageId
	].
	^ promise >>= [:aPath | self class imageFormFrom: aPath]