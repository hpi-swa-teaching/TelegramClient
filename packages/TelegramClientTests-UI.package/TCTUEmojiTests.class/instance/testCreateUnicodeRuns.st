testing
testCreateUnicodeRuns

	| expectedRuns result |
	expectedRuns := OrderedCollection new
		add: $A;
		add: TCTMMocks mockUnicodeRun1;
		add: $C;
		add: TCTMMocks mockUnicodeRun2;
		yourself.
	
	result := TCUEmojiHelper createUnicodeRunsFrom: TCTMMocks mockEmojiString.
	self assert: expectedRuns equals: result.