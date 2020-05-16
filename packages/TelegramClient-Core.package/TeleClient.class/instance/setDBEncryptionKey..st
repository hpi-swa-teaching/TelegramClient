initialize-release
setDBEncryptionKey: aString

	self send: '{"@type": "checkDatabaseEncryptionKey", "encryption_key": "', aString, '"}'