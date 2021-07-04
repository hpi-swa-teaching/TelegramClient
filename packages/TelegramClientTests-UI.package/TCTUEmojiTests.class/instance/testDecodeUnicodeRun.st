as yet unclassified
testDecodeUnicodeRun

	| text morph |
	text := TCUEmojiHelper decodeUnicodeRun: TCTMMocks mockUnicodeRun1.
	morph := text asMorph.

	self forceSaveScreenshotOf: morph as: 'testDecodeUnicodeRun' in: self class defaultTestResultPath.
	self assert: 231947180 equals: (self computeHashOf: (self takeScreenshotOf: morph)).