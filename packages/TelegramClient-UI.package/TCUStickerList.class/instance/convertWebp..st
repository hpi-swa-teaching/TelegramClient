converting
convertWebp: aStickerPath

	| file byteArray form |
	file := FileStream fileNamed: aStickerPath asString.
	file binary.
	byteArray := file next: file size.
	file close.
	form := (TCCLibWebP decode: byteArray).
	^ form