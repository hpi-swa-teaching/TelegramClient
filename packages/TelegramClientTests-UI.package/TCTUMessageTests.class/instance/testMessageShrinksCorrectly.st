testing
testMessageShrinksCorrectly

	| message messageMorph |

	message := TCTMMocks mockMessage.
	messageMorph := TCUMessage newFromTCCMessage: message.
	
	self forceSaveScreenshotOf: messageMorph as: 'testMessageUI' in: self class defaultTestResultPath.
	self assert: 116327780 equals: (self computeHashOf: (self takeScreenshotOf: messageMorph)).