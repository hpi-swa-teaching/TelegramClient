testing
testOrderModify

	| aChat |
	
	aChat := self chats last.
	aChat order: 6.
	
	chats notify.
			
	self assert: (chats first id == 1).