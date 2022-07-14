testing
testIsLastMessageOfDay
	
	| messageYesterday messageToday |
	messageYesterday := (TCCTextMessage new
		text: 'test';
		date: (DateAndTime yesterday)
	).
	messageToday := (TCCTextMessage new
		text: 'test';
		date: (DateAndTime today)
	).
	self chat addOldestMessage: messageToday.
	self chat addOldestMessage: messageYesterday.
	self assert: messageYesterday isLastMessageOfDay.
	self assert: messageToday isFirstMessageOfDay.