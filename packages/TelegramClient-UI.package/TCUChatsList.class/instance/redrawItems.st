drawing
redrawItems

	self clearItems.

	self items: (self chats collect: [:aChat |
		self createChatListItem: aChat]).

	self items do: [:anItem | self scroller addMorphFront: anItem].