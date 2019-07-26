building
createGroup
	| selection ids|
	(nameDraft isEmptyOrNil) ifTrue: [ ^nil].
	selection := selectedContactList collect: [:i | (selectedContactList at: i) equals: true].
	selection isEmpty ifTrue: [^nil].
	ids := selection collect: [:a | (users at: a) id].
	backend createNewBasicGroupChat: ids asArray withTitle: nameDraft.
	(self dependents first) delete.