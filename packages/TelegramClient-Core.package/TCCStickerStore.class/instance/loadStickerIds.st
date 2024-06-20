as yet unclassified
loadStickerIds

	| sets |
	
	self core send: (TCCRequest getInstalledStickerSets)
		thenDo: [:stickerEvent | sets := stickerEvent at: 'sets'.
			sets do: [:setInfo | self core send: (TCCRequest getStickerSetFor: (setInfo at: 'id'))
				thenDo: [:set | (set at: 'is_animated') ifFalse: [self storeStickerSet: set.]]]].