utility
embedEmojisInto: aString

	| reencoded runs |
	
	reencoded := (aString convertToEncoding: 'UTF-16') convertFromEncoding: 'UTF-16'.
	runs := self createUnicodeRunsFrom: reencoded.
	^ runs inject: Text new 
		into: [:aggregatedText :runOrChar | 
			(runOrChar species = OrderedCollection) ifTrue: [
				aggregatedText , (self decodeUnicodeRun: runOrChar)
			] ifFalse: [
				aggregatedText , runOrChar asText.
			]
		].
