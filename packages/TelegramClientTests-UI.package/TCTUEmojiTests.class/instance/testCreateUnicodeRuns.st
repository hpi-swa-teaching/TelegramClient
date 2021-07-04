as yet unclassified
testCreateUnicodeRuns

	| expectedRuns |
	expectedRuns := OrderedCollection new
		add: $A;
		add: {'1F3F3'. '200D'. '1F308'} asOrderedCollection;
		add: $B;
		add: {'1F602'} asOrderedCollection;
		add: $C;
		add: {'1F3F3'. 'FE0F'. '200D'. '26A7'} asOrderedCollection;
		yourself.
	
	self assert: expectedRuns equals: (TCUEmojiHelper createUnicodeRunsFrom: TCTMMocks mockEmojiString).