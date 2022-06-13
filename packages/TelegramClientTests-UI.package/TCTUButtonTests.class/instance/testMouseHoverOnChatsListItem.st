as yet unclassified
testMouseHoverOnChatsListItem

	|chatListItem oldColor| 
	
	chatListItem := TCUChatListItem new. 
	oldColor := chatListItem color. 
	chatListItem mouseEnter: EventMorph new. 
	self assert: oldColor ~~ chatListItem color. 