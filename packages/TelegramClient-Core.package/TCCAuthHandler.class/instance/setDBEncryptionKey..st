accessing
setDBEncryptionKey: aString

	self client send: '{"@type": "checkDatabaseEncryptionKey", "encryption_key": "', aString, '"}'.