testing
testTextFrom

	| text morph |
	text := TCUEmojiHelper textFrom: TCTMMocks mockEmojiSequence1.
	morph := text asMorph.

	self forceSaveScreenshotOf: morph as: #testTextFrom in: self class defaultTestResultPath.
	self assert: 187336834 equals: (self computeHashOf: (self takeScreenshotOf: morph)).