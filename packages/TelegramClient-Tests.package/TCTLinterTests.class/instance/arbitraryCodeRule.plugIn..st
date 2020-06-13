private
arbitraryCodeRule: aRule plugIn: aPlugIn
	
	| failures result |
	
	failures := ((SLTestRunner new
		environment: SLDefaultEnvironment new)
		runOnTests: {aRule} andTestObjects: self classTestObjects)
			select: [:testObject |
				result := (testObject resultOf: aRule).
				result isSummary
					ifTrue: [result > 0]
					ifFalse: [result isNegative]].

	self assert: failures isEmpty description: 'Test ', aRule asString, ' failed on ', failures asString.