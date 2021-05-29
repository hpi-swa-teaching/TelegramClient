running
setUp

	| core | 
	core := TCTMockCore basicNew initializeHandlers.
	core chats: TCTMocks mockChats. 
	self app: (TCUMain newWithCore: core). 
	self wantsToTest: self app. 