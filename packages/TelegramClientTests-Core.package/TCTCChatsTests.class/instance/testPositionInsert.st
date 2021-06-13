testing
testPositionInsert

	self chats add: (TCCChat new
		id: 0;
		position: 0;
		positionKnown: true).

	self assert: 0 equals: self chats first id.