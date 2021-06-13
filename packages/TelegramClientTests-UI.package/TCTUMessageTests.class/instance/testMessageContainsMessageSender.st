testing
testMessageContainsMessageSender

	self wantsToTest: (TCUMessage newFromTCCMessage: TCTMMocks mockMessage).
	self assertReading: TCTMMocks mockUser1 fullName in: self subject.