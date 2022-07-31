testing
testDayDividerMessageIdInvalid

	| date message |
	date := (DateAndTime fromUnixTime: 1376462359) asDate. "14.8.13"
	message := TCUDayDividerMessage newFromDate: date.
	self wantsToTest: (TCUDayDividerMessageWrapper newFromMessage: message withWidth: 500).
	
	self assert: self subject messageId < 0.