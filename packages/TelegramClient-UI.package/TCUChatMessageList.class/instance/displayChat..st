accessing
displayChat: aChat


	self chat: aChat.
	
	aChat messages reversed do: [:message |
		self addMessage: message message senderId: message senderId].