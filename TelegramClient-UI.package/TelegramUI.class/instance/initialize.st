as yet unclassified
initialize
	self setChatIndex: 1.
	super initialize.
	chats := SortedCollection sortBlock: [:a :c | a order > c order].
	messageCache := OrderedCollection new.
	chatIndex := -1.
	messageCacheChatId := -1.
	debouncer := Debouncer new.
	userCache := Dictionary new.
	self initializeListeners.