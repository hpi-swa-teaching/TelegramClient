drawing
addAuthenticationWindow

	self currentWindow: (TCUAuthenticationWindow newWithCore: self core).
	self openCurrentWindow.
	
	self currentWindow when: #logInCompleted send: #logInCompleted to: self.
	self currentWindow when: #delete send: #delete to: self.