nil
initializeAuthStateHandler
	authStateHandlerDict := Dictionary new.
	
	authStateHandlerDict add:
		TD_authorizationStateWaitTdlibParameters -> [:msg|
			| rsp params |
			rsp := SerializableFunctionContainer newWithFuncName: 'setTdlibParameters'.
			params := Dictionary new.
			params at: 'database_directory' put: 'tdlib'.
			params at: 'use_message_database' put: true.
			params at: 'use_secret_chats' put: true.
			params at: 'api_id' put: 723795.
			params at: 'api_hash' put: 'e73695bc2c6efdabc330910e3bda8de6'.
			params at: 'system_language_code' put: 'en'.
			params at: 'device_model' put: 'Desktop'.
			params at: 'system_version' put: 'Linux'.
			params at: 'application_version' put: '1.0'.
			params at: 'enable_storage_optimizer' put: true.
			rsp argAt: 'parameters' put: params.
			client send: rsp.
			].
	
	authStateHandlerDict add: TD_authorizationStateWaitEncryptionKey -> [:msg|
		"we dont encrypt."
			| rsp |
			rsp := SerializableFunctionContainer newWithFuncName: 'checkDatabaseEncryptionKey'.
			rsp argAt: 'key' put: ''.
			client send: rsp.
		].
	
	authStateHandlerDict add: TD_authorizationStateWaitPhoneNumber -> [:msg|
		[| rsp number |
			number :=  UIManager default request: 'Enter your telephon nummer please'. 
			rsp := SerializableFunctionContainer newWithFuncName: 'setAuthenticationPhoneNumber'.
			rsp argAt: 'phone_number' put: number.
			client send: rsp.] fork.
		].
	
	authStateHandlerDict add: TD_authorizationStateWaitCode -> [:msg|
		[| rsp code |
			code :=  UIManager default request: 'Enter the authorization code please'. 
			rsp := SerializableFunctionContainer newWithFuncName: 'checkAuthenticationCode'.
			rsp argAt: 'code' put: code.
			client send: rsp.] fork.
		].
	
	authStateHandlerDict add: TD_authorizationStateReady -> [:msg|
		ui model onAuthStateReady.
		].