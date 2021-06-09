testing
testMessageContainsMessageText

	self wantsToTest: (TCUMessage newFromTCCMessage: TCTMMocks mockMessage).
	self assertReading: TCTMMocks mockMessageText in: self subject.