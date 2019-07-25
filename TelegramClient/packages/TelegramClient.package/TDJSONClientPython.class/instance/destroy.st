lib-calls
destroy
	destroyed := true.
	Debug log: 'Closing TCP Socket'.
	socket isConnected ifTrue: [
	socket sendData: (2 negated asByteArrayOfSize: 8).].
	socket close.
	socket := nil