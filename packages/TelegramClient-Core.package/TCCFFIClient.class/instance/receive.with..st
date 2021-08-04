external calls
receive: aHandle with: aNumber

	 <cdecl: char* 'td_json_client_receive' (void * double)>
	^ self externalCallFailed