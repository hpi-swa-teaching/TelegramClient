as yet unclassified
testMessageContainsDate

	| message |
	
	message := TCTMocks mockMessage.
	message date: message date asUTC.
	
	self wantsToTest: (TCUMessage newFromTCCMessage: message).
	self assertReading: '15:57' in: self subject.