as yet unclassified
send: request
	| stream |
	stream := ReadWriteStream on: ''.
	request jsonWriteOn: stream.
	TD_Debug log: ' [SEND]',stream contents.
	^self class sendTo: client request: stream contents.