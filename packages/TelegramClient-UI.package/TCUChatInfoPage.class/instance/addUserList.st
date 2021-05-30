drawing
addUserList

	
	
	self chat members ifNotNil: [
	(self chat members) do: [:user|
		self contentWrapper addMorph: (self createUserListItemWith: user fullName).
		].
	].
	
	
