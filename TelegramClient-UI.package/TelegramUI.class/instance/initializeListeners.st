as yet unclassified
initializeListeners
	backend registerListener: self for: TD_chat withSelector: #addChat:.
	backend registerListener: self for: TD_messages withSelector: #addMessages:.
	backend registerListener: self for: TD_message withSelector: #addMessage:.
	backend registerListener: self for: TD_updateNewMessage withSelector: #receivedNewMessage:.
	backend registerListener: self for: TD_chats withSelector: #receivedChats:.
	backend registerListener: self for: TD_user withSelector: #receivedUser:.