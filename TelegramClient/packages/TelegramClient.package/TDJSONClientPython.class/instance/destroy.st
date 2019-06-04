as yet unclassified
destroy
	destroyed := true.
	Transcript show: 'TDLib will be destroyed. Im scared :('.
	socket isConnected ifTrue: [
	socket sendData: (2 negated asByteArrayOfSize: 8).].
	socket close.
	socket := nil.