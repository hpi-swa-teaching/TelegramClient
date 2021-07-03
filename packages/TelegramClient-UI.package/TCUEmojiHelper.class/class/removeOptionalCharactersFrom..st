downloading
removeOptionalCharactersFrom: aCollection

	| optional |
	optional := OrderedCollection newFrom: {'FE0F'}.
	
	^ aCollection removeAllSuchThat: [:code | optional includes: code]

