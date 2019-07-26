ffi
destroy: client
	<cdecl: void 'td_json_client_destroy' (void*) module: 'tdjson'>
	^self externalCallFailed