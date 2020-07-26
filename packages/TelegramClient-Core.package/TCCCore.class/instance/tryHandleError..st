errorhandling
tryHandleError: anError

	"Handles recoverable errors"
	(anError at: 'message') caseOf: {
	 ['USERNAME_NOT_OCCUPIED'] ->[ UIManager default inform: TCCErrorConstants UnknownUsername .].
	 ['USERNAME_INVALID'] -> [ UIManager default inform: TCCErrorConstants UnknownUsername .].
	}
	otherwise: [self halt: 'An Error Occured. Check Transcript Output.'].