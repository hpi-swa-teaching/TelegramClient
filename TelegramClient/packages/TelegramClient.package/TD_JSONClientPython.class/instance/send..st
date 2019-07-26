as yet unclassified
send: request
	| stream |
	stream := ReadWriteStream on: ''.
	request jsonWriteOn: stream.
	TD_Debug log: ' [SEND]',stream contents.
	socket sendData: (stream contents size asByteArrayOfSize: 8).
	socket sendData: stream contents.