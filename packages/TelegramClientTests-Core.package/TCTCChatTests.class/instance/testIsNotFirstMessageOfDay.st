testing
testIsNotFirstMessageOfDay
	
	| messageLaterToday messageToday |
	messageToday := (TCCTextMessage new
		text: 'today';
		date: (DateAndTime today)
	).
	messageLaterToday := (TCCTextMessage new
		text: 'later today';
		date: (DateAndTime today + 1)
	).
	self chat addNewestMessage: messageToday.
	self chat addNewestMessage: messageLaterToday.
	self assert: messageLaterToday isFirstMessageOfDay not.
	self assert: messageToday isLastMessageOfDay not.