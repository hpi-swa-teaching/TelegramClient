testing
testDecodeUnicodeRun

	| text morph |
	text := TCUEmojiHelper decodeUnicodeRun: TCTMMocks mockUnicodeRun1.
	morph := text asMorph.

	self forceSaveScreenshotOf: morph as: 'testDecodeUnicodeRun' in: self class defaultTestResultPath.
	self assert: 187336834 equals: (self computeHashOf: (self takeScreenshotOf: morph)).