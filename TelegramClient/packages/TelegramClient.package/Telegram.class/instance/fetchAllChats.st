api-calls
fetchAllChats
	self isLibraryConnected ifFalse: [ ^ nil ].
	client send: TD_getChats newWithDefaults