as yet unclassified
receiveFrom: client withTimeout: timeout
	<cdecl: char* 'td_json_client_receive' (void* double) module: 'tdjson.dll'>
	^self externalCallFailed.