utility
findLongestRun: aCollection

	(aCollection size > self defaultMaxEmojiLength) ifTrue: [
		^ self findLongestRun: (aCollection first: 10)
	].
	(aCollection size <= 1 or: [self emojiExists: (self joinRun: aCollection)]) ifTrue: [
		^ aCollection size
	].
	^ self findLongestRun: aCollection allButLast
