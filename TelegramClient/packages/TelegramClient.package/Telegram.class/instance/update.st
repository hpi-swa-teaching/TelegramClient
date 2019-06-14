nil
update
	| command |
	command := client receive: 0.05. 
	(command = nil) ifTrue: [^nil].
	Debug log: '[RECIEVED](', command class asString,')', command asString.
	(command class =  TD_updateAuthorizationState) ifTrue:[
		| auth_state |
		auth_state := command authorization_state.
		
		(auth_state class = TD_authorizationStateClosed) ifTrue:[ ^nil ].
		
		(auth_state class = TD_authorizationStateWaitTdlibParameters) ifTrue:[ 
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
			^ client send: rsp.
			].
		(auth_state class = TD_authorizationStateWaitEncryptionKey) ifTrue:[ 
			"we dont encrypt."
			| rsp |
			rsp := SerializableFunctionContainer newWithFuncName: 'checkDatabaseEncryptionKey'.
			rsp argAt: 'key' put: ''.
			^client send: rsp.
		].
		(auth_state class = TD_authorizationStateWaitPhoneNumber) ifTrue:[
			[| rsp number |
			number :=  UIManager default request: 'Enter your telephon nummer please'. 
			rsp := SerializableFunctionContainer newWithFuncName: 'setAuthenticationPhoneNumber'.
			rsp argAt: 'phone_number' put: number.
			client send: rsp.] fork.
		].
		(auth_state class = TD_authorizationStateWaitCode) ifTrue:[
			[| rsp code |
			code :=  UIManager default request: 'Enter the authorization code please'. 
			rsp := SerializableFunctionContainer newWithFuncName: 'checkAuthenticationCode'.
			rsp argAt: 'code' put: code.
			client send: rsp.] fork.
		].
		(auth_state class = TD_authorizationStateReady) ifTrue: [
			client send: TD_getChats newWithDefaults.
			"client send: (TD_sendMessage messageToChat: -388007830 withText: 'Hello world! - send by your humble squeak client')."
		].
	] ifFalse: [
	command class == TD_chats ifTrue: [
		command chat_ids do: [ :id | 
			client send: (TD_getChat chatId: id).
		].
	].
	command class == TD_chat ifTrue: [
		ui model addChat: command]].
	command class == TD_messages ifTrue: [
		command messages do: [:msg | 
			ui model addMessage: msg.
		]
	].