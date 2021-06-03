adding
addNewMembers: aUserCollection

	| lastSeenUser |
	self content removeMorph: self loadButton. 
	lastSeenUser := self content submorphs last.
	aUserCollection do: [:aUser|
		self content addMorphBack: (TextMorph new contents: aUser fullName; lock)
		].
	self content addMorphBack: self loadButton.
	self scrollToShow: lastSeenUser