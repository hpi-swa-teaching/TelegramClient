testing
testFindLongestRun

	self
		assert: TCTMMocks mockUnicodeRunsLength
		equals: (TCUEmojiHelper findLongestRun: TCTMMocks mockUnicodeRun1).