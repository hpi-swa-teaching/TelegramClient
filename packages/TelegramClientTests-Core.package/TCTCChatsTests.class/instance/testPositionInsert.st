testing
testPositionInsert

	self chats add: (TCCChat new
		id: 0;
		position: self chats first position + 1).

	self assert: 0 equals: self chats first id.