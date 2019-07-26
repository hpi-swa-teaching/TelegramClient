nil
createPrivateChatWith: userId
	self isLibraryConnected ifFalse: [ ^ nil ].
	client send: (TD_createPrivateChat userId: userId).