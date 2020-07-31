testing
testOrderInsert

	| aChat |
	
	aChat := TCCChat new
		id: 4;
		order: 4.
	
	self chats add: aChat.
			
	self assert: (self chats first id == 4)	