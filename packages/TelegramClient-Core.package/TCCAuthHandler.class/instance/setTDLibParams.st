library calls
setTDLibParams

 	self client send: (TCCRequest
		newWithType: 'setTdlibParameters'
		from: {'parameters' -> (Dictionary newFrom: {
			'database_directory' -> (FileDirectory default fullName , '/tdlib').
			'use_message_database' -> true.
			'use_secret_chats' -> true.
			'use_test_dc' -> self useTestDC.
			'api_id' -> self apiID.
			'api_hash' -> self apiHash.
			'system_language_code' -> 'en'.
			'device_model' -> 'Desktop'.
			'system_version' -> self client specificClient type.
			'application_version' -> '1.0'.
			'enable_storage_optimizer' -> true})}).