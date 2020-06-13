accessing
addItem: aChat

	| item |
	item := TCUChatListItem newWithChatName: aChat title andWidth: self width.
	item chatId: aChat id.
	item on: #mouseDown send: #chatItemClicked:event:from: to: self withValue: item.
	
	self items add: item.
	self addMorph: item.