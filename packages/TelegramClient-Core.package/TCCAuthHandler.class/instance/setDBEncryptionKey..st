library calls
setDBEncryptionKey: aString

	self core send: (TCCRequest newCheckDatabaseEncryptionKey: aString).