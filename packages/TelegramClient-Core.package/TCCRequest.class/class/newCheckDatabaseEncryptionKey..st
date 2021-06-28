instance creation
newCheckDatabaseEncryptionKey: aString

	^ TCCRequest
		newWithType: 'checkDatabaseEncryptionKey'
		from: {'encryption_key' -> aString}