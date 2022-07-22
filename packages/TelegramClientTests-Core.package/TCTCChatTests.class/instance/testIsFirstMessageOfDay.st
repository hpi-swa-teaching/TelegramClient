testing
testIsFirstMessageOfDay
	
	| messageYesterday messageToday |
	messageYesterday := TCTMMocks mockTextMessageWith: self core withDate: (DateAndTime yesterday).
	messageToday := TCTMMocks mockTextMessageWith: self core withDate: (DateAndTime today).
	self chat addNewestMessage: messageYesterday.
	self chat addNewestMessage: messageToday.
	self assert: messageToday isFirstMessageOfDay.
	self assert: messageYesterday isLastMessageOfDay.