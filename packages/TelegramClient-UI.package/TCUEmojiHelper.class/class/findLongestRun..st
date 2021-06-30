utility
findLongestRun: aCollection

	(aCollection size < 2) ifTrue: [
		^ aCollection size
	] ifFalse: [
		(self emojiExists: (self joinRun: aCollection)) ifTrue: [
			^ aCollection size
		] ifFalse: [
			^ self findLongestRun: aCollection allButLast
		]
	]