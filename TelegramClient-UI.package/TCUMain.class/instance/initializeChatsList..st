initialization
initializeChatsList: aChatsList

	| chats |
	chats := self core getChats.
	
	chats do: [:aChat| self chatsList addItem: aChat fullName].