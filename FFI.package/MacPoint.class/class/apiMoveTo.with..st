api calls
apiMoveTo: x with: y
	<apicall: void 'MoveTo' (short short) module:'InterfaceLib'>
	^self externalCallFailed