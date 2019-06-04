as yet unclassified
initialize
	jsonParser := TDJSONParser new.
	destroyed := false.
	buffer := String new: 10000.
	socket := Socket newTCP.
	socket connectTo: (NetNameResolver localHostAddress) port: 5007.
	bufferPos := 1.
	bufferStart := 1.