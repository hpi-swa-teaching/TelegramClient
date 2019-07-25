internal
update
	| command ls |
	command := client receive: 0.05. 
	command isNil ifTrue: [^nil].
	Debug log: '[RECIEVED](', command class asString,')', command asString.
	
	(messageHandlerDict at: command class ifAbsent: [ [:msg |]] ) value: command.
	ls := (listener at: command class ifAbsent: [ ^nil]).
	ls do: [:l | 
		(l first) perform: (l second) withArguments: (Array with: command)]