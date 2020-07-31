testing
testOrderInsert

	self chats add: (TCCChat new
		id: 4;
		order: 4).
			
	self assert: (self chats first id == 4).