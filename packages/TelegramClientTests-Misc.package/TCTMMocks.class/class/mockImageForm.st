image
mockImageForm

	^ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self mockImageData readStream)