drawing
createChatListItem: aChat

	| item |
	
	item := TCUChatListItem newWithChat: aChat width: self width.
	(aChat = self selectedChat) ifTrue: [item select].
	item on: #mouseDown send: #chatItemClicked:event:from: to: self withValue: item.
	
	^ item