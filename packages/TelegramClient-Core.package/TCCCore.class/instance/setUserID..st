accessing
setUserID: anUser

	| userID |
	self loggedInUserID = 0 ifTrue: [
		userID := (anUser at: 'user') at: 'id'.
		self loggedInUserID: userID].