instance creation
newFromMessageEvent: aMessageEvent in: aChat from: aUser

	^ (self newFromMessageEvent: aMessageEvent in: aChat) 
		sender: aUser;
		yourself