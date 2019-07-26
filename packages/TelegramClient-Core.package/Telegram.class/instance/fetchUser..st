nil
fetchUser: userId
	self isLibraryConnected ifFalse: [ ^ nil ].
	client send: (TD_getUser userId: userId).