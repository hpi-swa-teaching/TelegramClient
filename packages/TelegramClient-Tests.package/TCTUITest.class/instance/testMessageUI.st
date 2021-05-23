testing
testMessageUI

	| message messageMorph |
	message := TCCMessage newFromMessageEvent: (TCTMocks mockMessageJsonFrom: TCTMocks mockChatID) in: TCCNullChat new.
	messageMorph := TCUMessage newFromTCCMessage: message.
	
	self forceSaveScreenshotOf: messageMorph as: 'testMessageUI' in: self class defaultTestResultPath.
	self assert: 134349208 equals: (self computeHashOf: (self takeScreenshotOf: messageMorph)).