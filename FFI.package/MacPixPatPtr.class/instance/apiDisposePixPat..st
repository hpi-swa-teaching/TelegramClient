api calls
apiDisposePixPat: aPixPat
	<apicall: void 'DisposePixPat' (MacPixPatPtr*) module:'InterfaceLib'>
	^self externalCallFailed