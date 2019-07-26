calculating
calculateColor: bytes With: number
	|bias|
	bias:=100.
	^ ((bytes unsignedByteAt: number) / 255) * (255 - bias) + bias
	
