as yet unclassified
initialize
	super initialize.
	chats := SortedCollection sortBlock: [:a :c | a order > c order].
	messageCache := OrderedCollection new.
	selectedChatIndex := 1.
	messageCacheChatId := -1.
	debouncer := Debouncer new.
	self initializeListeners.