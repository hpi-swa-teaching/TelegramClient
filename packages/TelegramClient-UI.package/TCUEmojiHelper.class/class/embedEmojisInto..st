utility
embedEmojisInto: aString

	| decodedString |
	decodedString := self decodeIntegers: (self decompose: aString).
	^ decodedString inject: 
			Text new 
		into: [:aggregatedText :codePoint | 
			(codePoint > 255) ifTrue: [
				aggregatedText , (Text string: Character startOfHeader asString attribute: (TextAnchor new anchoredMorph: (self formFor: codePoint))).
			] ifFalse: [
				aggregatedText , ((Character value: codePoint) asText).
			]
		].
