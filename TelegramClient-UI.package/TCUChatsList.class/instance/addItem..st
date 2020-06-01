accessing
addItem: aTitle

	| item |
	item := TCUChatListItem newWithChatName: aTitle.
	item width: self width.
	self addMorph: item.