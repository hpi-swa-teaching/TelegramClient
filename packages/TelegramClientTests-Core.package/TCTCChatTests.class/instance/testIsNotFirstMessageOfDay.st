testing
testIsNotFirstMessageOfDay
	
	| messageLaterToday messageToday |
	messageToday := TCTMMocks mockTextMessageWith: self core withDate: (DateAndTime today).
	messageLaterToday := TCTMMocks mockTextMessageWith: self core withDate: (DateAndTime today + 1).
	self chat addNewestMessage: messageToday.
	self chat addNewestMessage: messageLaterToday.
	self assert: messageLaterToday isFirstMessageOfDay not.
	self assert: messageToday isLastMessageOfDay not.