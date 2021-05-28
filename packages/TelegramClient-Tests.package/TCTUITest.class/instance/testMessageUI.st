testing
testMessageUI

	| message messageMorph |
	message := TCTMocks mockMessage.
	messageMorph := TCUMessage newFromTCCMessage: message.
	
	self forceSaveScreenshotOf: messageMorph as: 'testMessageUI' in: self class defaultTestResultPath.
	self assert: 134349208 equals: (self computeHashOf: (self takeScreenshotOf: messageMorph)).