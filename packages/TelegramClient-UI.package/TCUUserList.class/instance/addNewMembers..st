drawing
addNewMembers: aUserCollection

	| lastSeenUser |
	self content removeMorph: self loadButton.
	lastSeenUser := self content submorphs last.
	aUserCollection do: [:aUser | self addUserBack: aUser].
	self chat canLoadMoreMembers ifTrue: [self addLoadButton].
	self scrollToShow: lastSeenUser.