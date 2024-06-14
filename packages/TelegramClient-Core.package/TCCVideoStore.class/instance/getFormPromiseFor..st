accessing
getFormPromiseFor: aThumbnailId

	| promise |
	promise := self at: aThumbnailId ifAbsent: [
		self at: aThumbnailId put: Promise new.
		self requestFileFor: aThumbnailId with: (self at: aThumbnailId).
 		self at: aThumbnailId
	].
	^ promise >>= [:aPath | self class imageFormFrom: aPath]