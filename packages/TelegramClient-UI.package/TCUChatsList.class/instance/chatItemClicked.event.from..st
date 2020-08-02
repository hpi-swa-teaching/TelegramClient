event handling
chatItemClicked: aChatListItem event: anEvent from: aSender

	self deselectChats.

	(aChatListItem chatID ~= self selectedChat id)
		ifTrue: [aChatListItem select.
			self
				selectedChat: aChatListItem chat;
				triggerEvent: #newChatSelected with: aChatListItem chat]
		ifFalse: [self
			selectedChat: TCCNullChat new;
			triggerEvent: #chatDeselected].