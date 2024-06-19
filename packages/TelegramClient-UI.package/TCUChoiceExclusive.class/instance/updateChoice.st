as yet unclassified
updateChoice

	self isSelected
	ifTrue: [selectionMorph color: TCUDefaultValues colorNileBlue.
		self isSelected: false.]
	ifFalse: [selectionMorph color: Color black.
		self isSelected: true.
		poll newSelection: self.
		]