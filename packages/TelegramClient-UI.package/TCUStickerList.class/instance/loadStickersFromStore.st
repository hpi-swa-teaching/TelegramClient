drawing
loadStickersFromStore

	| stickerpaths |
	
	stickerpaths := OrderedCollection new.
	self core stickerStore values do: [:val | stickerpaths add: val value].
	^ stickerpaths