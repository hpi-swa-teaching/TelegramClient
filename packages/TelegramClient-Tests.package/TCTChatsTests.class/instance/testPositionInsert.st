testing
testPositionInsert

	self chats add: (TCCChat new
		id: 0;
		position: 0;
		positionKnown: true).

	self assert: self chats first id equals: 0.