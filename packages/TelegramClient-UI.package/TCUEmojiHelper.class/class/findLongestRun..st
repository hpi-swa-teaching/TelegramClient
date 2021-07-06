utility
findLongestRun: aCollection

	(aCollection size > 10) ifTrue: [
		^ self findLongestRun: (aCollection first: 10)
	].
	(aCollection size < 2 or: [self emojiExists: (self joinRun: aCollection)]) ifTrue: [
		^ aCollection size
	].
	^ self findLongestRun: aCollection allButLast.
