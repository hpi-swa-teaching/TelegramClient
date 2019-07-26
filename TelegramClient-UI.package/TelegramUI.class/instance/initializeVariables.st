initialize
initializeVariables
	
	self setChatIndex: 1.
	chats := SortedCollection sortBlock: [:a :c | a order > c order].
	messageCache := OrderedCollection new.
	chatIndex := -1.
	messageCacheChatId := -1.