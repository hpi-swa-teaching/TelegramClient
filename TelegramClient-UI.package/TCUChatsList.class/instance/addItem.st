as yet unclassified
addItem

	| item |
	item := TCUChatListItem newWithChatName: 'jonsie'.
	item width: self width.
	self addMorph: item.