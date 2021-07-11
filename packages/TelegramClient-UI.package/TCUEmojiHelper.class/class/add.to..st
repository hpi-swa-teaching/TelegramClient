unicode matching
add: aCharacter to: aCharAndEmojiCollection

	(aCharacter isOctetCharacter) ifTrue: [
		aCharAndEmojiCollection add: aCharacter.
	] ifFalse: [
		self addEmojiCodePoint: aCharacter codePoint printStringHex to: aCharAndEmojiCollection.
	].
	^ aCharAndEmojiCollection