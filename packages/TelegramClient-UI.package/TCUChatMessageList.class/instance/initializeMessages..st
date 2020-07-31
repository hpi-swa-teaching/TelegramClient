initialization
initializeMessages: aMessageList

	aMessageList do: [:message| self addMessage: (message message) senderId: message senderId].