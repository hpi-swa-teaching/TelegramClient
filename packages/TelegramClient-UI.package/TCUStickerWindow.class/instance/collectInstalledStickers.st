drawing
collectInstalledStickers
	
	| core sets |
	sets := Array new.
	core := self core.
	core send: (TCCRequest getInstalledStickerSets)
		thenDo: [:stickerEvent | sets := stickerEvent at: 'sets'.
			sets do: [:setInfo | core send: (TCCRequest getStickerSetFor: (setInfo at: 'id'))
				thenDo: [:set | self downloadStickerSetFrom: set.]]].