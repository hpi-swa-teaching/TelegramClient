running
setUp

	self chats: TCCChats newWithDefaultSorting.
	1 to: 3 do: [:aNumber | self chats add: (TCCChat new
		id: aNumber;
		order: aNumber)].