utility
embedEmojisInto: aString

	| charsAndEmojis |
	charsAndEmojis := self splitCharsAndEmojisIn: (self reencodeString: aString).
	^ charsAndEmojis
		inject: Text new
		into: [:aggregatedText :charOrEmojis |
			(charOrEmojis isCharacter) ifTrue: [
					aggregatedText , charOrEmojis asText.
				] ifFalse: [
					aggregatedText , (self textFrom: (self removeOptionalCharactersFrom: charOrEmojis))
				]
			]
