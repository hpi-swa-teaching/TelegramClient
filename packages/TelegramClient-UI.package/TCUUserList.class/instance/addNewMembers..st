drawing
addNewMembers: aCollection

	"this method seemingly has no senders"
	| lastSeenUser |
	self scroller removeMorph: self loadButton.
	lastSeenUser := self scroller submorphs last.
	aCollection do: [:aUser | self addUserBack: aUser].
	self chat canLoadMoreMembers ifTrue: [self addLoadButton].
	self scrollToShow: lastSeenUser.