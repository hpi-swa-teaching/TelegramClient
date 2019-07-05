nil
update
	| command ls |
	command := client receive: 0.05. 
	(command = nil) ifTrue: [^nil].
	Debug log: '[RECIEVED](', command class asString,')', command asString.
	
	(messageHandlerDict at: command class ifAbsent: [ [:msg |]] ) value: command.
	ls := (listener at: command class ifAbsent: [ ^nil]).
	ls do: [:l | 
		(l at: 1) perform: (l at: 2) withArguments: (Array with: command).
	].