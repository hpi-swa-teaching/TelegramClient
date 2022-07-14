testing
testIsNotLastMessageOfDay
	
	| messageLaterToday messageToday |
	messageToday := (TCCTextMessage new
		text: 'today';
		date: (DateAndTime today)
	).
	messageLaterToday := (TCCTextMessage new
		text: 'later today';
		date: (DateAndTime today + 1)
	).
	self chat addOldestMessage: messageLaterToday.
	self chat addOldestMessage: messageToday.
	self assert: messageToday isLastMessageOfDay not.
	self assert: messageLaterToday isFirstMessageOfDay not.