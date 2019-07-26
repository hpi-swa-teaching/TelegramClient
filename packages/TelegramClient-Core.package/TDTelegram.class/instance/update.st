internal
update
	| command |
	command := client receive: 0.05. 
	command isNil ifTrue: [^nil].
	TDDebug log: '[RECIEVED](', command class asString,')', command asString.
	(messageHandlerDict at: command class ifAbsent: [ [:msg |]] ) value: command.
	self fireListenerMessage: command