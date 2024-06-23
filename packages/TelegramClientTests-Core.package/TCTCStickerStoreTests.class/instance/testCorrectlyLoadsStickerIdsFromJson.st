testing
testCorrectlyLoadsStickerIdsFromJson

	|  stickerSet |
	stickerSet := TCTMMocks mockStickerSetJson.
	
	self core stickerStore storeStickerSet: stickerSet.
	
	self assert: TCTMMocks mockStickerSet equals: self core stickerStore stickerSets.