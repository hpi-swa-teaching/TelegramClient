as yet unclassified
getInstalledStickers

	| sets |
	
	sets := Array new.
	self core send: (TCCRequest getInstalledStickerSets)
		thenDo: [:stickerEvent | sets := stickerEvent at: 'sets'.
			sets do: [:setInfo | self core send: (TCCRequest getStickerSetFor: (setInfo at: 'id'))
				thenDo: [:set | (set at: 'is_animated') ifFalse: [self downloadStickerSet: set.]]]].