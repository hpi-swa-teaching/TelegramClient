testing
testMessageContainsDate

	| message |

	message := TCTMMocks mockTextMessage.
	message date: message date asUTC.

	self wantsToTest: (TCUMessage newFrom: message).
	self assertReading: '15:57' in: self subject.