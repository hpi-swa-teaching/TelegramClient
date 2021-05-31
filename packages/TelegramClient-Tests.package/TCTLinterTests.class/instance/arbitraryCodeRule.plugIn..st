private
arbitraryCodeRule: aRule plugIn: aPlugIn
	| failures failingTestObjects result |
	failingTestObjects := OrderedCollection new.
	failures := ((SLTestRunner new environment: (self environmentFor: aPlugIn withRule: aRule))
		runOnTests: {aRule}
		andTestObjects: self classTestObjects) select: [:testObject |
		result := testObject resultOf: aRule.
		result isSummary
			ifTrue: [
				failingTestObjects addAll: (testObject methods select: [:each | result summarizingCondition value: (each resultOf: result summarizedTest)]).
				result > 0]
			ifFalse: [result isNegative]].
	self assert: failures isEmpty description: 'Failures in: ', failures asString