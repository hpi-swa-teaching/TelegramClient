errorhandling
tryHandleError: anError

	"Handles recoverable errors"
	(anError at: 'message') caseOf: {
	 ['USERNAME_NOT_OCCUPIED'] ->[ UIManager default inform: TCCErrorConstants unknownUsername .].
	 ['USERNAME_INVALID'] -> [ UIManager default inform: TCCErrorConstants unknownUsername .].
	}
	otherwise: [
		((anError at: 'message') startsWith: 'Can''t lock file')
			ifTrue: [UIManager default inform: TCCErrorConstants tdlibAlreadyInUse ]
			ifFalse: [self halt: 'An Error Occured. Check Transcript Output.'.].
		].