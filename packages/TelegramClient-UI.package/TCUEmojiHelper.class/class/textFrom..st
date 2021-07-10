utility
textFrom: anEmojiSequence

	| runLength |
	runLength := self findFirstEmojiLengthIn: anEmojiSequence.
	(runLength > 0) ifTrue: [
		^ (self textFor: (self fileNameFor: (anEmojiSequence first: runLength))) ,
			(self textFrom: (anEmojiSequence allButFirst: runLength))
	] ifFalse: [
		^ Text new
	]