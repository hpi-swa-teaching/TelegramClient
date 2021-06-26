testing
testMessageContainsMessageText

	self wantsToTest: (TCUMessage newFromTCCMessage: (TCTMMocks mockMessageWith: self core)).
	self assertReading: TCTMMocks mockMessageText in: self subject.