instance creation
newFrom: aJsonObject

	| stickerData |
	stickerData := (aJsonObject at: 'sticker').
	(stickerData at: 'is_animated') ifTrue:
		[^ TCCNotSupportedMessage new].
	
	^ self new
		width: (stickerData at: 'width');
		height: (stickerData at: 'height');
		stickerId: ((stickerData at: 'sticker') at: 'id');
		yourself