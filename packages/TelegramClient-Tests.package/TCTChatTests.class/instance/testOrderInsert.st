testing
testOrderInsert

	self chats add: (TCCChat new
		id: 0;
		order: 0).

	self assert: self chats first id equals: 0.