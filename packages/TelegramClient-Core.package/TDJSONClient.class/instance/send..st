as yet unclassified
send: request
	| stream |
	stream := ReadWriteStream on: ''.
	request jsonWriteOn: stream.
	^self sendTo: client request: stream contents.