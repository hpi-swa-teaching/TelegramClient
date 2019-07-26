nil
createNewBasicGroupChat: userIds withTitle: title
	self isLibraryConnected ifFalse: [ ^ nil ].
	client send: (TD_createNewBasicGroupChat userIds: userIds title: title).
