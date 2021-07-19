drawing
addMainWindow

	self currentWindow: (TCUMainWindow newWithCore: self core).
	self openCurrentWindow.
	
	self currentWindow when: #loggedOut send: #loggedOut to: self.
	self currentWindow when: #delete send: #delete to: self.