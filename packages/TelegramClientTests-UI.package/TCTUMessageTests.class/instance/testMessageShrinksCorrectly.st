testing
testMessageShrinksCorrectly

	| message messageMorph |

	message := TCTMMocks mockTextMessage.
	messageMorph := TCUMessage newFrom: message.

	self forceSaveScreenshotOf: messageMorph as: 'testMessageShrinksCorrectly' in: self class defaultTestResultPath.
	self assert: 153740059 equals: (self computeHashOf: (self takeScreenshotOf: messageMorph)).