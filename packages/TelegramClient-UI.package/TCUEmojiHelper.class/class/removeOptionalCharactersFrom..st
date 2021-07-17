utility
removeOptionalCharactersFrom: aCollection

	"OpenMoji includes some optional characters in their filenames"
	"not all clients send them, so we remove them to ease matching"
	^ aCollection removeAllSuchThat: [ :code | self defaultOptionalCharacters includes: code]