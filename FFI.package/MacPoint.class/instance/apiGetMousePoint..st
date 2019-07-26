api calls
apiGetMousePoint: aMacPoint
	<apicall: void 'GetMouse' (MacPoint*) module:'InterfaceLib'>
	^self externalCallFailed