nil
fetchAllContacts
	self isLibraryConnected ifFalse: [ ^ nil ].
	client send: (SerializableFunctionContainer newWithFuncName: 'getContacts').