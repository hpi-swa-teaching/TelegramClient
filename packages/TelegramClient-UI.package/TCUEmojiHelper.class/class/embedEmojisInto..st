utility
embedEmojisInto: aString

	| reencoded runs |
	self halt.
	reencoded := (aString convertToEncoding: 'UTF-16') convertFromEncoding: 'UTF-16'.
	runs := self createUnicodeRunsFrom: reencoded.
	^ reencoded inject: 
			Text new 
		into: [:aggregatedText :char | 
			(char codePoint > 255) ifTrue: [
				aggregatedText , (Text string: Character startOfHeader asString attribute: (TextAnchor new anchoredMorph: (self formFor: char codePoint))).
			] ifFalse: [
				aggregatedText , ((Character value: char codePoint) asText).
			]
		].
