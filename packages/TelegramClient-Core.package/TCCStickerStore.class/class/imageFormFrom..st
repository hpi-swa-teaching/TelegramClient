utility
imageFormFrom: aString

	| file byteArray |
	file := FileStream fileNamed: aString.
	file binary.
	byteArray := file next: file size.
	file close.
	^ (TCCLibWebP decode: byteArray).