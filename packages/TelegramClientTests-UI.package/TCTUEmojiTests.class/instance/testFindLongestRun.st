as yet unclassified
testFindLongestRun

	self assert: 3 equals: (TCUEmojiHelper findLongestRun: {'1F3F3'. '200D'. '1F308'. '1F602'} asOrderedCollection).

	