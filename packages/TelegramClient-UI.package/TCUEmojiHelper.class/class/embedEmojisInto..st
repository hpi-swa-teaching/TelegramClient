utility
embedEmojisInto: aString

	| reencoded runs |
	"Convert UTF-16 to Unicode"
	reencoded := (aString convertToEncoding: 'UTF-16') convertFromEncoding: 'UTF-16'.
	
	"runs are squences of elements with the same property, see RunArray"
	runs := self createUnicodeRunsFrom: reencoded.
	^ runs inject: Text new
		into: [:aggregatedText :runOrChar |
			(runOrChar isCollection) ifTrue: [
					| run |
					run := self removeOptionalCharactersFrom: runOrChar.
					aggregatedText , (self decodeUnicodeRun: run)
				] ifFalse: [
					aggregatedText , runOrChar asText.
				]
			]