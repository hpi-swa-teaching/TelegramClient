ExternalCalls
send: aHandle with: aMessage

	 <cdecl: void* 'td_json_client_send' (void * char*)>
	^ self externalCallFailed