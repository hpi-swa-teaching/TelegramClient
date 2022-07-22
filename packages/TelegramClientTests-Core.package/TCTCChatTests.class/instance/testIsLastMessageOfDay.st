testing
testIsLastMessageOfDay
	
	| messageYesterday messageToday |
	messageYesterday := TCTMMocks mockTextMessageWith: self core withDate: (DateAndTime yesterday).
	messageToday := TCTMMocks mockTextMessageWith: self core withDate: (DateAndTime today).
	self chat addOldestMessage: messageToday.
	self chat addOldestMessage: messageYesterday.
	self assert: messageYesterday isLastMessageOfDay.
	self assert: messageToday isFirstMessageOfDay.