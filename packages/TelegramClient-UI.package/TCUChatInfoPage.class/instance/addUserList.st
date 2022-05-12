drawing
addUserList

	self userList: ((TCUUserList newFrom: self chat) width: self contentWrapper width).
	self contentWrapper addMorph: self userList.