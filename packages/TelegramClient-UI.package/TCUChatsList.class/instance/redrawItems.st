accessing
redrawItems

	self clearItems.

	"reversed is temporarly needed while chats are not in right order"
	self items: (self chats reversed collect: [:aChat |
		self createChatListItem: aChat]).

	self items do: [:anItem | self addMorph: anItem].