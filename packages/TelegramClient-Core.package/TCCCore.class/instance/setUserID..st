accessing
setUserID: anUser

	| userID |
	self loggedInUserID = 0 ifTrue: [
		userID := anUser at: 'id'.
		self loggedInUserID: userID].