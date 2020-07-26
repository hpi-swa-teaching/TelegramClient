accessing
adaptColor: aSenderId

	(aSenderId =TCUMain core loggedInUserID)
		ifTrue: [self color: TCUDefaultValues colorCarrot].