testing
testIsFirstMessageOfDay
	
	| messageYesterday messageToday |
	messageYesterday := (TCCTextMessage new
		text: 'test';
		date: (DateAndTime yesterday)
	).
	messageToday := (TCCTextMessage new
		text: 'test';
		date: (DateAndTime today)
	).
	self chat addNewestMessage: messageYesterday.
	self chat addNewestMessage: messageToday.
	self assert: messageToday isFirstMessageOfDay.
	self assert: messageYesterday isLastMessageOfDay.