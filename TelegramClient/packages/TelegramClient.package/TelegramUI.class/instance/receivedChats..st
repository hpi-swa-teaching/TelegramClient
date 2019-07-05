as yet unclassified
receivedChats: msg
	msg chat_ids do: [ :id | 
			backend fetchChat: id.
		]. 