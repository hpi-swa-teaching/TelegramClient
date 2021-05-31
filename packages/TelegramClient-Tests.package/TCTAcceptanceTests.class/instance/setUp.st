running
setUp

	self core: TCTNoTDLibCore new.
	self core chats: TCTMocks mockChats. 
	self app: (TCUMain newWithCore: self core). 
	self wantsToTest: self app.
