as yet unclassified
send: request
	| stream |
	stream := ReadWriteStream on: ''.
	request jsonWriteOn: stream.
	TDDebug log: ' [SEND]',stream contents.
	socket sendData: (stream contents size asByteArrayOfSize: 8).
	socket sendData: stream contents.