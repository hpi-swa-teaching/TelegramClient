event handling
chatItemClicked: aChatListItem event: anEvent from: aSender

	| isSameChat |

	isSameChat := aChatListItem chatID = self selectedChat id.
	self deselectChats.
	isSameChat ifFalse: [ self selectChat: aChatListItem. ].