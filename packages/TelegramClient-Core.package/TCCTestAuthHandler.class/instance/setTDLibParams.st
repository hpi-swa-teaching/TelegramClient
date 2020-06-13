accessing
setTDLibParams

 	self client send: (TCCRequest
		newWithType: 'setTdlibParameters'
		from: {'parameters' -> (Dictionary newFrom: {
			'database_directory' -> 'tdlib'.
			'use_message_database' -> true.
			'use_secret_chats' -> true.
			'use_test_dc' -> true.
			'api_id' -> 1733417.
			'api_hash' -> 'bda1c0b38033d2a5f2ce7e8ab06ef31a'.
			'system_language_code' -> 'en'.
			'device_model' -> 'Desktop'.
			'system_version' -> self client specificClient type.
			'application_version' -> '1.0'.
			'enable_storage_optimizer' -> true})}).