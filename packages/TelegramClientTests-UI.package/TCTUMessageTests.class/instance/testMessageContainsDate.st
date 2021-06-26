testing
testMessageContainsDate

	| message |

	message := TCTMMocks mockMessageWith: self core.
	message date: message date asUTC.

	self wantsToTest: (TCUMessage newFromTCCMessage: message).
	self assertReading: '15:57' in: self subject.