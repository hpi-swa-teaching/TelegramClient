asserting
assertSeeing: aMorphClassName in: aSuperMorph
	
	aSuperMorph findDeepSubmorphThat: 
		[:submorph | submorph isKindOf: aMorphClassName] 
		ifAbsent: 
			[AssertionFailure signal: 'Assertion failed']