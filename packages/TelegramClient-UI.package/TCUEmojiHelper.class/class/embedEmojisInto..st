utility
embedEmojisInto: aString

	| reencoded charsAndEmojis |
	
	reencoded := (aString convertToEncoding: 'UTF-16') convertFromEncoding: 'UTF-16'.
	charsAndEmojis := self splitCharsAndEmojisIn: reencoded.
	^ charsAndEmojis
		inject: Text new
		into: [:aggregatedText :charOrEmojis |
			(charOrEmojis isCharacter) ifTrue: [
				aggregatedText , charOrEmojis asText.
			] ifFalse: [
				aggregatedText , (self textFrom: (self removeOptionalCharactersFrom: charOrEmojis))
			]
		]