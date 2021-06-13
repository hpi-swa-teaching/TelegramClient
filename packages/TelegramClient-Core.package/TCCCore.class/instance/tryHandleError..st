error handling
tryHandleError: anError

	(anError at: 'message') caseOf: {
		['USERNAME_NOT_OCCUPIED'] -> [UIManager default inform: TCCErrorConstants unknownUsername].
		['USERNAME_INVALID'] -> [UIManager default inform: TCCErrorConstants unknownUsername].
		['PHONE_NUMBER_INVALID'] -> [UIManager default inform: TCCErrorConstants invalidAuthenticationCode].
		['PHONE_CODE_INVALID'] -> [UIManager default inform: TCCErrorConstants invalidAuthenticationCode]}
	otherwise: [
		((anError at: 'message') beginsWith: 'Can''t lock file')
			ifTrue: [UIManager default inform: TCCErrorConstants tdlibAlreadyInUse]
			ifFalse: [self halt: 'An Error Occured. Check Transcript Output.']].