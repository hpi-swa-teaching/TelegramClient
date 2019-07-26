api calls
apiFillCOval: r with: pat
	<apicall: void 'FillCOval' (MacRect* MacPixPatPtr*) module:'InterfaceLib'>
	^self externalCallFailed