stepping and presenter
step

	self shouldRedraw ifTrue: [
		self selectedSet: ((self core stickerStore stickerSets keysInOrder) at: 1).
		self showSelectedSet.
		self shouldRedraw: false]