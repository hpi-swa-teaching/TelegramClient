events
openNewChat: aChat

	self app chats triggerEvent: #openNewChat with: (TCCChat new
		id: (aChat at: 'id')).