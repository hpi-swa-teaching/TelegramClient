asserting
assertNotReading: aString in: aSuperMorph
	
	"TODO: How to negate assertions?"
	aSuperMorph findDeepSubmorphThat: 
		[:submorph |
			(submorph isKindOf: TextMorph)
				and: [submorph visible]
					and: [submorph text asString includesSubstring: aString]]
		ifAbsent: 
			[^nil].
	
	AssertionFailure signal: 'Text ' , aString , ' found in ' , aSuperMorph class asString