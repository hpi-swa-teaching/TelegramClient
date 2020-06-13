initialization
chatItemClicked: aChatListItem event: anEvent from: aSender
	
	self selectedChat deselect.
	
	(aChatListItem chatId~= self selectedChat chatId) 
	ifTrue: [
		aChatListItem select.
		self 
			selectedChat: aChatListItem;
			triggerEvent: #newChatSelected with: aChatListItem]
	ifFalse: [
		self 
			selectedChat: NullChatListItem new;
			triggerEvent: #chatDeselected]
	

	

	