testing
testMessageContainsMessageText

	self wantsToTest: (TCUMessage newFromTCCMessage: TCTMMocks mockMessage).
	self assertReading: TCTMMocks mockText in: self subject.