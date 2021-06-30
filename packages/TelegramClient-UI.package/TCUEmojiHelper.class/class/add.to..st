unicode matching
add: aCharacter to: aRunCollection

	(aCharacter codePoint > 255) ifTrue: [
		self addSingle: aCharacter to: aRunCollection.
	] ifFalse: [
		aRunCollection add: aCharacter.
	].
	^ aRunCollection