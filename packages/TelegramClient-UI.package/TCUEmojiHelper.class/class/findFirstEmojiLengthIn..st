utility
findFirstEmojiLengthIn: anEmojiSequence

	anEmojiSequence size > self defaultMaxEmojiLength ifTrue: [
			^ self findFirstEmojiLengthIn: (anEmojiSequence first: self defaultMaxEmojiLength)
		].
	(anEmojiSequence size <= 1 or: [self emojiExists: (self fileNameFor: anEmojiSequence)]) ifTrue: [
			^ anEmojiSequence size
		].
	^ self findFirstEmojiLengthIn: anEmojiSequence allButLast
