as yet unclassified
mouseDown: anEvent

	self selected ifTrue: [self selected: false] ifFalse: [self selected: true]