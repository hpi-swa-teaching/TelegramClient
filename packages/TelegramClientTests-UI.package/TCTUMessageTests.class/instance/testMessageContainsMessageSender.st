testing
testMessageContainsMessageSender

	self wantsToTest: (TCUMessage newFromTCCMessage: (TCTMMocks mockMessageWith: self core)).
	self assertReading: TCTMMocks mockUser1 fullName in: self subject.