utility
textFrom: anEmojiSequence

	| emojiLength |
	emojiLength := self findFirstEmojiLengthIn: anEmojiSequence.
	(emojiLength > 0) ifTrue: [
		^ (self textFor: (self fileNameFor: (anEmojiSequence first: emojiLength))) ,
			(self textFrom: (anEmojiSequence allButFirst: emojiLength))
	] ifFalse: [
		^ Text new
	]