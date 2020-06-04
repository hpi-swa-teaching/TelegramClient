accessing
addItem: aTitle

	| item |
	item := TCUChatListItem newWithChatName: aTitle andWidth: self width.
	
	self items add: item.
	self addMorph: item.