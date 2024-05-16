accessing
getFormPromiseFor: aStickerId

	| promise |
	promise := self at: aStickerId ifAbsent: [
		self at: aStickerId put: Promise new.
		self requestStickerFor: aStickerId with: (self at: aStickerId).
 		self at: aStickerId
	].
	^ promise >>= [:aPath | self class stickerFormFrom: aPath]