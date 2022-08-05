testing
testIsNotFirstMessageOfDay
	
	| messageLaterToday messageToday |
	messageToday := TCTMMocks mockTextMessageWith: self core withDate: (DateAndTime today).
	messageLaterToday := TCTMMocks mockTextMessageWith: self core withDate: (DateAndTime today + 1).
	self chat addNewestMessage: messageToday.
	self chat addNewestMessage: messageLaterToday.
	self deny: messageLaterToday isFirstMessageOfDay.
	self deny: messageToday isLastMessageOfDay.