sending
addChat: aTdChatObject
	chats add: aTdChatObject.
	self changed: #chatTitels