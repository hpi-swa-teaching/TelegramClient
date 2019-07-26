ffi
sendTo: client request: request
	<cdecl: void 'td_json_client_send' (void* char*) module: 'tdjson'>
	^self externalCallFailed