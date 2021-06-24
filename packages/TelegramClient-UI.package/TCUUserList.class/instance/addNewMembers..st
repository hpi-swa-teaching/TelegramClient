drawing
addNewMembers: aUserCollection

	| lastSeenUser |
	self scroller removeMorph: self loadButton.
	lastSeenUser := self scroller submorphs last.
	aUserCollection do: [:aUser | self addUserBack: aUser].
	self chat canLoadMoreMembers ifTrue: [self addLoadButton].
	self scrollToShow: lastSeenUser.