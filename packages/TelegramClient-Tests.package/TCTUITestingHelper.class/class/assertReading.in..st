asserting
assertReading: aString in: aSuperMorph
	
	"features to add:"
	"- check if morph is hidden"
	"- check if the contrast between text color and background is great enougth"
	aSuperMorph findDeepSubmorphThat: 
		[:submorph | (submorph isKindOf: TextMorph)
			ifTrue: 
				[((submorph text asString findString: aString) = 0) not]
			ifFalse: 
				[false]]
		ifAbsent: 
			[AssertionFailure signal: 'Assertion failed']