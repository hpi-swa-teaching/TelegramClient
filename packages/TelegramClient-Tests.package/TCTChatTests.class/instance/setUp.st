running
setUp

	| firstChat middleChat lastChat |
	
	firstChat := TCCChat new
		id: 1;
		order: 1.
	middleChat := TCCChat new
		id: 2;
		order: 2.
	lastChat := TCCChat new
		id: 3;
		order: 3.
	
	self chats: (TCCChats newFrom: {firstChat. middleChat. lastChat}).