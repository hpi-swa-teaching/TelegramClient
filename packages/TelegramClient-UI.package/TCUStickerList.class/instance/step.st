stepping and presenter
step
	"only executed once to load first set"

	self shouldRedraw ifTrue: [
		self selectedSet: ((self core stickerStore stickerSets keysInOrder) at: 1).
		self showSelectedSet.
		self shouldRedraw: false].