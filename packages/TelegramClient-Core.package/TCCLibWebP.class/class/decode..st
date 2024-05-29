as yet unclassified
decode: aByteArray
	"decodes a WebP image from a ByteArray and returns the result Form or nil in case of an error"

	| dimensions decodedImage result |
	
	dimensions := self getFileInfo: aByteArray.
	dimensions ifNil: [ ^nil ].
	decodedImage := ByteArray new: (dimensions x) * (dimensions y) * 4.
	result := self WebPDecodeBGRAInto: aByteArray dataSize: aByteArray size outputBuffer: decodedImage outputBufferSize: decodedImage size outputStride: dimensions x * 4.
	(result isNull) ifFalse: [ ^ self formFrom: decodedImage dimensions: dimensions ].
	^ nil