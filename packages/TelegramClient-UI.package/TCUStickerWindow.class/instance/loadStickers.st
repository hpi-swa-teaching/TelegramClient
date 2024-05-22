as yet unclassified
loadStickers

	| folder stickerpaths |
	
	folder := 'tdlib/stickers' asFileReference.
	Transcript show: 'Dateityp in TCUStickerWindow ändern'.
	stickerpaths := folder children select: [:each | each basename endsWith: '.jpg' ].
	^ stickerpaths