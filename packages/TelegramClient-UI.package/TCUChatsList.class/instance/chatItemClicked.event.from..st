event handling
chatItemClicked: aChatListItem event: anEvent from: aSender

	(aChatListItem chatID ~= self selectedChat id)
		ifTrue: [
			self
				deselectChats;
				selectChat: aChatListItem.]
		ifFalse: [
			self deselectChats.].