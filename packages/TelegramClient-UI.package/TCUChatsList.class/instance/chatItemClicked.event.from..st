event handling
chatItemClicked: aChatListItem event: anEvent from: aSender

	| isSameChat |

	isSameChat := aChatListItem chatId = self selectedChat id.
	self deselectChats.
	isSameChat ifFalse: [ self selectChat: aChatListItem. ].