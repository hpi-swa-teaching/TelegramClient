drawing
loadStickers

	| folder stickerpaths |
	
	folder := 'tdlib/stickers' asFileReference.
	stickerpaths := folder children select: [:each | each basename endsWith: '.webp' ].
	^ stickerpaths