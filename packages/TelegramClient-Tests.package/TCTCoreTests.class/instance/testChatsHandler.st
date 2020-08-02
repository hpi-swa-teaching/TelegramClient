as yet unclassified
testChatsHandler

	| chatsHandler |
	chatsHandler := TCCChatsHandler new.
	self core chatsHandler: chatsHandler.
	
	self assert: (self core chatsHandler) equals: chatsHandler.
	
	