accessing
getChat: anID

	| chatsWithID |
	chatsWithID := self detect: [:aChat | aChat id = anID].
	
	chatsWithID isEmpty ifFalse: [^ chatsWithID first].