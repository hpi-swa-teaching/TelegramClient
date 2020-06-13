accessing
setDBEncryptionKey: aString

	self client send: (TCCRequest
		newWithType: 'checkDatabaseEncryptionKey'
		from: {'encryption_key' -> aString}).