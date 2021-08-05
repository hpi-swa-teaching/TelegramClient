library calls
setDbEncryptionKey: aString

	self core send: (TCCRequest newCheckDatabaseEncryptionKey: aString).