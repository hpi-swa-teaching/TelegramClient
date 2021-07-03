downloading
removeOptionalCharactersFrom: aFileName

	| optional codes codesCollection |
	optional := OrderedCollection newFrom: {'FE0F'}.
	
	codes :=(aFileName subStrings: '.') first subStrings: '-'.
	codesCollection := codes asOrderedCollection removeAllSuchThat: [:code | optional includes: code].
	^ (self joinRun: codesCollection) , self defaultFileExtension.
