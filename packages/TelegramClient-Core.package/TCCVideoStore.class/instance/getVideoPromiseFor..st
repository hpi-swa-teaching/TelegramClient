accessing
getVideoPromiseFor: aVideoId

	| promise |
	promise := self at: aVideoId ifAbsent: [
		self at: aVideoId put: Promise new.
		self requestFileFor: aVideoId with: (self at: aVideoId).
 		self at: aVideoId
	].
	^ promise