event handling
chatItemClicked: aChatListItem event: anEvent from: aSender

	(aChatListItem chatID ~= self selectedChat id)
		ifTrue: [
			self
				deselectChats;
				select: aChatListItem.]
		ifFalse: [
			self deselectChats.].