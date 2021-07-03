downloading
removeOptionalCharactersFrom: aFileName

	| optional codes codesCollection |
	optional := OrderedCollection newFrom: {'FE0F'}.
	
	codes :=(aFileName subStrings: '.') first subStrings: '-'.
	codesCollection := codes inject: (OrderedCollection new) into: [ :newCodes :code |
		(optional includes: code)  ifTrue: [
			newCodes
		] ifFalse: [
			newCodes
				add: code;
				yourself
		]	
	].
	^ (self joinRun: codesCollection) , self defaultFileExtension.
