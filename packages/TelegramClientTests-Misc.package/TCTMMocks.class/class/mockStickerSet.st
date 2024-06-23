sticker
mockStickerSet

	^ Dictionary new
		at: self mockStickerSetId put: (
			OrderedCollection new 
				add: self mockStickerId;
				add: self mockStickerId2;
				yourself);
		yourself.