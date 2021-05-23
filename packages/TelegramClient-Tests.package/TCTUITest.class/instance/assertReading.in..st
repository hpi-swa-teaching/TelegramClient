asserting
assertReading: aString in: aSuperMorph
	
	aSuperMorph findDeepSubmorphThat: 
		[:submorph |
			[submorph isKindOf: TextMorph]
				and: [submorph visible]
					and: [submorph text asString includesSubstring: aString]]
		ifAbsent: 
			[AssertionFailure signal: 'Assertion failed']