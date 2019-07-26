lib-calls
send: request
	| stream |
	stream := ReadWriteStream on: ''.
	request jsonWriteOn: stream.
	Debug log: ' [SEND]',stream contents.
	^self class sendTo: client request: stream contents