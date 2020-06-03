initialization
updateChatsList

	| chats |
	chats := self core chats.
	
	chats do: [:aChat| self chatsList addItem: aChat fullName].