ffi
receiveFrom: client withTimeout: timeout
	<cdecl: char* 'td_json_client_receive' (void* double) module: 'tdjson'>
	^self externalCallFailed