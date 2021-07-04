testing
testFindLongestRun

	| result |

	result := TCUEmojiHelper findLongestRun: TCTMMocks mockUnicodeRun1.
	self assert: 3 equals: result.