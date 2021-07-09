testing
testCreateUnicodeRuns

	self
		assert: TCTMMocks mockUnicodeRuns
		equals: (TCUEmojiHelper createUnicodeRunsFrom: TCTMMocks mockEmojiString).