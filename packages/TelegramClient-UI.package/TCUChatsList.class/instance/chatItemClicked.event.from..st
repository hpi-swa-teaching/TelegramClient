event handling
chatItemClicked: aChatListItem event: anEvent from: aSender

	self deselectChats.

	(aChatListItem chatID ~= self selectedChat id)
		ifTrue: [self select: aChatListItem].