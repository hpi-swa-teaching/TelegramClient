utility
decodeUnicodeRun: aCollection

	| runLength |
	runLength := self findLongestRun: aCollection.
	(runLength > 0) ifTrue: [
		^ (self textFor: (self joinRun: (aCollection first: runLength))) ,
			(self decodeUnicodeRun: (aCollection allButFirst: runLength))
		] ifFalse: [
			^ Text new
		]