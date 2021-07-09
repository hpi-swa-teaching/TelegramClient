unicode matching
add: aCharacter to: aRunCollection

	(aCharacter isOctetCharacter) ifTrue: [
			aRunCollection add: aCharacter.
		] ifFalse: [
			self append: aCharacter codePoint printStringHex toSubcollectionOf: aRunCollection.
		].
	^ aRunCollection