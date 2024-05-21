as yet unclassified
loadStickers

	| folder stickers |
	
	folder := 'tdlib/stickers' asFileReference.
	Transcript show: 'Dateityp'.
	stickers := folder children select: [:each | each basename endsWith: '.jpg' ].
	stickers do: [:sticker | self addMorph: (ImageMorph new
		image: (Form fromFileNamed: sticker fullName)).].