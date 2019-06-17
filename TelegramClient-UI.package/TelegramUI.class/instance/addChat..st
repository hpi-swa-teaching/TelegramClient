as yet unclassified
addChat: aTdChatObject
	chats add: aTdChatObject.
	self changed: #chatTitels.