drawing
addUserList

	self userList: ((TCUUserList newFrom: self chat)" width: self contentWrapper width" width: 596).
	self contentWrapper addMorph: self userList.