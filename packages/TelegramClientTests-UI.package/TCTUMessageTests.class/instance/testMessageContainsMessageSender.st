testing
testMessageContainsMessageSender

	self wantsToTest: (TCUMessage newFrom: TCTMMocks mockTextMessage).
	self assertReading: TCTMMocks mockUser1 fullName in: self subject.