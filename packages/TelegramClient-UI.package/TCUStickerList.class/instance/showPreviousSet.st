drawing
showPreviousSet
	
	| keyArray |
	
	keyArray := self core stickerStore stickerSets keysInOrder.
	(1 ~= (keyArray indexOf: (self selectedSet))) ifTrue: [
		self selectedSet: ((keyArray at: (keyArray indexOf: (self selectedSet)) - 1))]
	ifFalse: [self selectedSet: (keyArray at: keyArray size)].
	self showSelectedSet