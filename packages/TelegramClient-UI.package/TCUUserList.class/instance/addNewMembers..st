adding
addNewMembers: aUserCollection

	| lastSeenUser |
	self content removeMorph: self loadButton.
	lastSeenUser := self content submorphs last.
	aUserCollection do: [:aUser| self addUserBack: aUser].
	self chat canLoadMoreMembers ifTrue: [self content addMorphBack: self loadButton.].
	self scrollToShow: lastSeenUser.