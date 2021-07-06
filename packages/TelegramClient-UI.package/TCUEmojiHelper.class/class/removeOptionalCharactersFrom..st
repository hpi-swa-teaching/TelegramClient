utility
removeOptionalCharactersFrom: aCollection

	^ aCollection removeAllSuchThat: [:code | self defaultOptionalCharacters includes: code]