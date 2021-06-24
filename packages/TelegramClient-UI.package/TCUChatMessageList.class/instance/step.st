accessing
step 

	self loaded ifTrue: [self scroller offset y < 50 ifTrue: [self core getChatHistoryFrom: self chat id]]
	