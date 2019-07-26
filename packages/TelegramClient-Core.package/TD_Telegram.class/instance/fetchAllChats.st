nil
fetchAllChats
	self isLibraryConnected ifFalse: [ ^ nil ].
	client send: TD_getChats newWithDefaults.