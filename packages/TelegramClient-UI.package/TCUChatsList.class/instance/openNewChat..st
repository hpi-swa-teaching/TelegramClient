event handling
openNewChat: aChat

	self selectChat: (self items detect: [:anItem | anItem chat id = aChat id]).