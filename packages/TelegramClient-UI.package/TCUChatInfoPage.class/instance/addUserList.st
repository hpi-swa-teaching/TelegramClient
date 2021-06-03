drawing
addUserList

	self chat members ifNotNil: [
		self userList: (TCUUserList new width: self contentWrapper width). 
		self chat members do: [:aUser| 
			self userList addUserBack: aUser. 
		].
		self contentWrapper addMorph: self userList.
		self chat isSuperGroup ifTrue: [self userList addButton: self createUserListButton]. 
	].