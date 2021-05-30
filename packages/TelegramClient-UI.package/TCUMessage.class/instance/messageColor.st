drawing
messageColor

	^ self isOutgoing
			ifTrue: [TCUDefaultValues colorCarrot]
			ifFalse: [TCUDefaultValues colorLightBlue]