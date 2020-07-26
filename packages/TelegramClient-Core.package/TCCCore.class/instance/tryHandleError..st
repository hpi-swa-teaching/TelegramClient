errorhandling
tryHandleError: anError

	"Handles recoverable errors"
	(anError at: 'message') caseOf: {
	 ['USERNAME_NOT_OCCUPIED'] ->[ UIManager default inform: TCCErrorConstants unknownUsername .].
	 ['USERNAME_INVALID'] -> [ UIManager default inform: TCCErrorConstants unknownUsername .].
	}
	otherwise: [self halt: 'An Error Occured. Check Transcript Output.'].