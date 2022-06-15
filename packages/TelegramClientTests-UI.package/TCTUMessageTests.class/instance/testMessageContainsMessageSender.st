testing
testMessageContainsMessageSender

	self wantsToTest: (TCUMessage newFrom: (TCTMMocks mockTextMessageWith: self core)).
	self assertReading: TCTMMocks mockUser1 fullName in: self subject.