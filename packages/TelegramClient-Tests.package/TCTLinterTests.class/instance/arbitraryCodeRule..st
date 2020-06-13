private
arbitraryCodeRule: aRule
	
	| failures result |
		
	failures := (self runner 
		runOnTests: {aRule} andTestObjects: self classTestObjects)
		select: [:testObject |
			result := (testObject resultOf: aRule).
			result isSummary 
				ifTrue: [result > 0]
				ifFalse: [result isNegative]].

	self assert: failures isEmpty description: 'Test ', aRule asString, ' failed on ', failures asString.