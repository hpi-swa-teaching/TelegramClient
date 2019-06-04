as yet unclassified
initialize
	jsonParser := TDJSONParser new.
	destroyed := false.
	buffer := String new: 10000.
	socket := Socket newTCP.
	socket connectTo: (ByteArray readHexFrom: '7f000001') port: 8080.
	bufferPos := 1.
	bufferStart := 1.