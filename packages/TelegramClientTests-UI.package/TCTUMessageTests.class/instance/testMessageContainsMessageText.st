as yet unclassified
testMessageContainsMessageText

	self wantsToTest: (TCUMessage newFromTCCMessage: TCTMocks mockMessage).
	self assertReading: TCTMocks mockMessageText in: self subject.