api calls
apiMakeRGBPat: aPixPat with: aRGBColor
	<apicall: void 'MakeRGBPat' (MacPixPatPtr* MacRGBColor*) module: 'InterfaceLib'>
	^self externalCallFailed