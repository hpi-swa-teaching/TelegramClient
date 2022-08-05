drawing
secondaryColor

	^ self isOutgoing
			ifTrue: [TCUDefaultValues colorPottersClay]
			ifFalse: [TCUDefaultValues colorNileBlue]