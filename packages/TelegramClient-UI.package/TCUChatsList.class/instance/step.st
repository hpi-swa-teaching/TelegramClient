stepping and presenter
step

	self shouldRedraw ifTrue: [
		
		self clearItems.
		self items: (self chats collect: [:aChat |
			self createChatListItem: aChat]).

		self items do: [:anItem | self scroller addMorphBack: anItem].
		
		self shouldRedraw: false.
	].