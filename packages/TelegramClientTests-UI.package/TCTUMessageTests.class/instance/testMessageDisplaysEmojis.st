testing
testMessageDisplaysEmojis

	| message messageMorph |
	message := TCTMMocks mockTextMessageWith: self core.
	message text: TCTMMocks mockEmojiString.
	
	messageMorph := TCUMessage newFrom: message.
	
	self forceSaveScreenshotOf: messageMorph as: 'testMessageDisplaysEmojis' in: self class defaultTestResultPath.
	self assert: 214134281 equals: (self computeHashOf: (self takeScreenshotOf: messageMorph)).