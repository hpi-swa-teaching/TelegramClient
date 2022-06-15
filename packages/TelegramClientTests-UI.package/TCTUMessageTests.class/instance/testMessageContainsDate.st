testing
testMessageContainsDate

	| message |

	message := (TCTMMocks mockTextMessageWith: self core).
	message date: message date asUTC.

	self wantsToTest: (TCUMessage newFrom: message).
	self assertReading: '15:57' in: self subject.