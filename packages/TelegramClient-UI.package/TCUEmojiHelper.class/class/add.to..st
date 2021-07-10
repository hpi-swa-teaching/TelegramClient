unicode matching
add: aCharacter to: aCharsAndEmojisCollection

	(aCharacter isOctetCharacter) ifTrue: [
		aCharsAndEmojisCollection add: aCharacter.
	] ifFalse: [
		self addSingle: aCharacter codePoint printStringHex to: aCharsAndEmojisCollection.
	].
	^ aCharsAndEmojisCollection