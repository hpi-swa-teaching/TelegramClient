testing
testEmbedEmojisInto

	| text morph |
	text := TCUEmojiHelper embedEmojisInto: TCTMMocks mockEmojiString.
	morph := text asMorph.

	self forceSaveScreenshotOf: morph as: 'testEmbedEmojisInto' in: self class defaultTestResultPath.
	self assert: 210506531 equals: (self computeHashOf: (self takeScreenshotOf: morph)).