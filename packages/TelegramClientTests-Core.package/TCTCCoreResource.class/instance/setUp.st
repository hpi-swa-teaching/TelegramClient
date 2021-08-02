controlling
setUp

	| file |
	file := TCTCCoreResource file.
	'Resource Setup Begin' printOn: file.
	file flush.
	
	self core: TCTCTestCore new.
	3 seconds wait.
	self ensureLoggedIn.
		file := TCTCCoreResource file.
	'Resource Setup End' printOn: file.
	file flush.