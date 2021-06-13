asserting
assertSeeing: aMorphClassName in: aSuperMorph
	
	aSuperMorph findDeepSubmorphThat:
		[:submorph | submorph isKindOf: aMorphClassName]
		ifAbsent:
			[AssertionFailure signal: 'No Morph ' , aMorphClassName asString , ' found in ' , aSuperMorph class asString]