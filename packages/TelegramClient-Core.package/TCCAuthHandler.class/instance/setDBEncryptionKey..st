library calls
setDBEncryptionKey: aString

	self core send: (TCCRequest
		newWithType: 'checkDatabaseEncryptionKey'
		from: {'encryption_key' -> aString}).