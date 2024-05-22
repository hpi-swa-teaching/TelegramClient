as yet unclassified
step
	
	self shouldRedraw ifTrue: [
		self items: self loadStickers.
		self buildStickerListItems.
		self items do: [:anItem | self scroller addMorphBack: anItem].
		self shouldRedraw: false]