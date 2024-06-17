as yet unclassified
updateChoice

	self isSelected
	ifTrue: [selectionMorph color: TCUDefaultValues colorLightBlue.
		self isSelected: false.]
	ifFalse: [selectionMorph color: Color black.
		self isSelected: true.]