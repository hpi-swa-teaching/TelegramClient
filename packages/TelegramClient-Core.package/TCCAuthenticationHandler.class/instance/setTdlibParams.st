library calls
setTdlibParams

 	self core send: (TCCRequest
		newWithType: 'setTdlibParameters'
		from: {'parameters' -> (Dictionary newFrom: {
			'database_directory' -> (FileDirectory default fullName , '/tdlib').
			'use_message_database' -> true.
			'use_secret_chats' -> true.
			'use_test_dc' -> self useTestDC.
			'api_id' -> self class defaultApiId.
			'api_hash' -> self class defaultApiHash.
			'system_language_code' -> 'en'.
			'device_model' -> 'Desktop'.
			'system_version' -> self core client specificClient type.
			'application_version' -> '1.0'.
			'enable_storage_optimizer' -> true})}).