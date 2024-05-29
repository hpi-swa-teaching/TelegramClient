as yet unclassified
formFrom: aByteArray dimensions: aPoint
	"creates a Form from an BGRA ByteArray"

	^ Form
			extent: aPoint
			depth: 32
			bits: ((Bitmap new: aByteArray size / 4)
				fromByteStream: aByteArray readStream;
				yourself)
	
	