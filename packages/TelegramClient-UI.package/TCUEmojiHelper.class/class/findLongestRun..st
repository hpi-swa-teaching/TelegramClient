utility
findLongestRun: aCollection

	(aCollection size > self currentLargestEmojiSize) ifTrue: [
			^ self findLongestRun: (aCollection first: self currentLargestEmojiSize)
		].
	(aCollection size < 2 or: [self emojiExists: (self joinRun: aCollection)]) ifTrue: [
			^ aCollection size
		].
	^ self findLongestRun: aCollection allButLast
