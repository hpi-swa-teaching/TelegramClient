running
setUp

	core := TCTNoTDLibCore new.
	core chats: TCTMocks mockChats. 
	self app: (TCUMain newWithCore: core). 
	self wantsToTest: self app.
