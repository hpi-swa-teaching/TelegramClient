as yet unclassified
collectInstalledStickers
	
	| core sets |
	sets := Array new.
	core := (self owner) owner core.
	core send: (TCCRequest getInstalledStickerSets)
		thenDo: [:stickerEvent | sets := stickerEvent at: 'sets'.
			sets do: [:set | core send: (TCCRequest newRequestSticker: (set at: 'id'))
				thenDo: [Transcript show: ('installed: ', set at: 'id')]]].