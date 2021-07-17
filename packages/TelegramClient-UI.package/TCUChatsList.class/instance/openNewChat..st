events
openNewChat: aChat

	self select: (self items detect: [:anItem | anItem chat id = aChat id]).