accessing
mouseWheel: event

	super mouseWheel: event.
	self scroller offset y < 50 ifTrue: [self core getChatHistoryFrom: self chat id]