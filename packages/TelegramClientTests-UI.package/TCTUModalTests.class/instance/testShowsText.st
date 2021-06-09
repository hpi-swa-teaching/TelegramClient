testing
testShowsText

	self wantsToTest: (TCUModal newWithText: 'Test Modal' type: 'information').
	self assertReading: 'Test Modal' in: self subject.