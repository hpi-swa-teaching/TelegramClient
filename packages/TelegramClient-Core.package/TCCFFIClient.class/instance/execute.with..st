external calls
execute: aHandle with: aMessage

	<cdecl: char* 'td_json_client_execute' (void * char*)>
	^ self externalCallFailed