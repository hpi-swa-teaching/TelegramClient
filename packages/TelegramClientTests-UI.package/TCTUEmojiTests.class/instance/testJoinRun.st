testing
testJoinRun

	| result |
	
	result := TCUEmojiHelper joinRun: TCTMMocks mockSingleEmojiUnicodeRun.
	self assert: '1F3F3-200D-1F308' equals: result.