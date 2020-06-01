initialization
initializeChatsList

	| chats |
	chats := self core chats.
	
	chats isNil not ifTrue:[
		chats do: [:aChat| self chatsList addItem: aChat fullName]].