initialization
initialize

	super initialize.

	self
		initializeContent;
		borderWidth: 0;
		chat: TCCNullChat new;
		messages: OrderedCollection new.