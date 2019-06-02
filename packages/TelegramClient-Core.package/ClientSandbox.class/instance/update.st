nil
update
	| t1 t2 t3 t4 t5 t6 t7 t8 t9 |
	t1 := client receive: 0.05.
	t1 = nil
		ifTrue: [^ nil].
	Debug log: '[RECIEVED](' , t1 class asString , ')' , t1 asString.
	t1 class = TD_updateAuthorizationState
		ifTrue: [t9 := t1 authorization_state.
			t9 class = TD_authorizationStateClosed
				ifTrue: [^ nil].
			t9 class = TD_authorizationStateWaitTdlibParameters
				ifTrue: [t2 := SerializableFunctionContainer newWithFuncName: 'setTdlibParameters'.
					t3 := Dictionary new.
					t3 at: 'database_directory' put: 'tdlib'.
					t3 at: 'use_message_database' put: true.
					t3 at: 'use_secret_chats' put: true.
					t3 at: 'api_id' put: 723795.
					t3 at: 'api_hash' put: 'e73695bc2c6efdabc330910e3bda8de6'.
					t3 at: 'system_language_code' put: 'en'.
					t3 at: 'device_model' put: 'Desktop'.
					t3 at: 'system_version' put: 'Linux'.
					t3 at: 'application_version' put: '1.0'.
					t3 at: 'enable_storage_optimizer' put: true.
					t2 argAt: 'parameters' put: t3.
					^ client send: t2].
			t9 class = TD_authorizationStateWaitEncryptionKey
				ifTrue: [t4 := SerializableFunctionContainer newWithFuncName: 'checkDatabaseEncryptionKey'.
					t4 argAt: 'key' put: ''.
					^ client send: t4].
			t9 class = TD_authorizationStateWaitPhoneNumber
				ifTrue: [t6 := UIManager default request: 'Enter your telephon nummer please'.
					t5 := SerializableFunctionContainer newWithFuncName: 'setAuthenticationPhoneNumber'.
					t5 argAt: 'phone_number' put: t6.
					^ client send: t5].
			t9 class = TD_authorizationStateWaitCode
				ifTrue: [t8 := UIManager default request: 'Enter the authorization code please'.
					t7 := SerializableFunctionContainer newWithFuncName: 'checkAuthenticationCode'.
					t7 argAt: 'code' put: t8.
					^ client send: t7].
			t9 class = TD_authorizationStateReady
				ifTrue: [client send: TD_getChats newWithDefaults]]
		ifFalse: [t1 class == TD_chats
				ifTrue: [t1 chat_ids
						do: [:t10 | client
								send: (TD_getChat chatId: t10)]].
			t1 class == TD_chat
				ifTrue: [Transcript show: t1 asString;
						 cr]]