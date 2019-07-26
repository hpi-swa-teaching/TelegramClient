building
createGroup
	| selection ids|
	nameDraft isEmptyOrNil ifTrue: [ ^nil].
	"selection := OrderedCollection new."
	selection:= selectedContactList collect: [:i | (selectedContactList at: i) equals: true].
	"1 to: selectedContactList size do: [:i | (selectedContactList at: i) ifTrue: [selection add: i]]."
	selection isEmpty ifTrue: [^nil].
	ids := selection collect: [:a | (users at: a) id].
	backend createNewBasicGroupChat: ids asArray withTitle: nameDraft.
	(self dependents first) delete