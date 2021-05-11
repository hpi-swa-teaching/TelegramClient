instance creation
newWithMessage: aMessage
	^ self basicNew
		sender: aMessage sender; 
		chat: aMessage chat; 
		message: aMessage; 
		initialize