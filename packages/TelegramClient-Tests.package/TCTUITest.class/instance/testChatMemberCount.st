testing
testChatMemberCount

	(self subject findByClass: TCUChatListItem) click.
	self assertReading: '5' in: self app chatWindow. 