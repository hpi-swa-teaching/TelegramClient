utility
stickerFormFrom: aString

	"^ Form fromFileNamed: aString"
	| file byteArray form |
	file := FileStream fileNamed: aString.
	file binary.
	byteArray := file next: file size.
	file close.
	form := (TCCLibWebP decode: byteArray).
	^ form