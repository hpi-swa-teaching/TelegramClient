drawing
showNextSet
	
	| keyArray |
	keyArray := self core stickerStore stickerSets keysInOrder.
	(keyArray size > (keyArray indexOf: (self selectedSet))) ifTrue: [
		self selectedSet: (keyArray at: ((keyArray indexOf: (self selectedSet)) + 1))]
	ifFalse: [self selectedSet: (keyArray at: 1)].
	self showSelectedSet
	