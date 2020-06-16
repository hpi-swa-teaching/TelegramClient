initialization
initialize

	super initialize.

	self
		width: self defaultWidth;
		color: Color white;
		borderWidth: 0;
		initializeLayout;
		items: OrderedCollection new;
		selectedChat: TCUNullChatListItem new.