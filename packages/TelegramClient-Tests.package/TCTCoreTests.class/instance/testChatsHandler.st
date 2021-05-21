testing
testChatsHandler

	| chatsHandler |
	chatsHandler := TCCChatsHandler new.
	self core chatsHandler: chatsHandler.
	
	self assert: chatsHandler equals: (self core chatsHandler).