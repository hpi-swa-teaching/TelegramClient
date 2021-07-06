unicode matching
add: aCharacter to: aRunCollection

	(aCharacter isOctetCharacter) ifTrue: [
		aRunCollection add: aCharacter.
	] ifFalse: [
		self addSingle: aCharacter codePoint printStringHex to: aRunCollection.
	]. 
	^ aRunCollection