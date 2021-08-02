controlling
setUp

	Transcript showln: 'Resource Setup Begin'.
	self core: TCTCTestCore new.
	3 seconds wait.
	self ensureLoggedIn.
	Transcript showln: 'Resource Setup End'.