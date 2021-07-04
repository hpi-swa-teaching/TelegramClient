as yet unclassified
testCreateUnicodeRuns

	| expectedRuns |
	expectedRuns := OrderedCollection new
		add: $A;
		add: TCTMMocks mockUnicodeRun1;
		add: $C;
		add: TCTMMocks mockUnicodeRun2;
		yourself.
	
	self assert: expectedRuns equals: (TCUEmojiHelper createUnicodeRunsFrom: TCTMMocks mockEmojiString).