testing
testIsNotLastMessageOfDay
	
	| messageLaterToday messageToday |
	messageToday := TCTMMocks mockTextMessageWith: self core withDate: (DateAndTime today).
	messageLaterToday := TCTMMocks mockTextMessageWith: self core withDate: (DateAndTime today + 1).
	self chat addOldestMessage: messageLaterToday.
	self chat addOldestMessage: messageToday.
	self assert: messageToday isLastMessageOfDay not.
	self assert: messageLaterToday isFirstMessageOfDay not.