initialization
initialize

	super initialize.

	self
		chat: TCCNullChat new;
		clipSubmorphs: true;
		messages: OrderedCollection new.