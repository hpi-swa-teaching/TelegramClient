testing
testMessageContainsMessageSender

	self wantsToTest: (TCUMessage newFromTCCMessage: TCTMMocks mockMessage).
	self assertReading: TCTMMocks mockUser fullName in: self subject.