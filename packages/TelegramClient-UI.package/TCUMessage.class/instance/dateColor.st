drawing
dateColor

	^ self isOutgoing
			ifTrue: [TCUDefaultValues colorPottersClay]
			ifFalse: [TCUDefaultValues colorNileBlue]