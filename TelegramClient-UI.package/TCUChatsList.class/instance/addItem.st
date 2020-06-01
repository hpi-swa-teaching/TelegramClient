accessing
addItem

	| item |
	item := TCUChatListItem newWithChatName: 'jonsie'.
	item width: self width.
	self addMorphCentered: item.