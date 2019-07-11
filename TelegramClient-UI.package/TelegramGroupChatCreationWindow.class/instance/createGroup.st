as yet unclassified
createGroup
	| selection ids|
	(nameDraft = nil or: nameDraft = '') ifTrue: [ ^nil].
	selection := OrderedCollection new.
	1 to: selectedContactList size do: [:i | (selectedContactList at: i) ifTrue: [selection add: i]].
	selection size = 0 ifTrue: [^nil].
	ids := selection collect: [:a | (users at: a) id].
	backend createNewBasicGroupChat: ids asArray withTitle: nameDraft.
	(self dependents at: 1) delete.