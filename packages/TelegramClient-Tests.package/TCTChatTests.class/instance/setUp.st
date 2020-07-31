running
setUp

	self chats: TCCChats new.
	1 to: 3 do: [:aNumber | self chats add: (TCCChat new
		id: aNumber;
		order: aNumber)].