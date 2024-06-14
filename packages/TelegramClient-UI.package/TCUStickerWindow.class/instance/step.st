stepping and presenter
step
	
	self shouldRedraw ifTrue: [
		self core stickerStore getInstalledStickers.
		self buildStickerListItems.
		self items do: [:anItem | self scroller addMorphBack: anItem].
		self shouldRedraw: false]