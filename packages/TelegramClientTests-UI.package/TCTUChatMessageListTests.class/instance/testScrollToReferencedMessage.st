testing
testScrollToReferencedMessage

	| referencedMessage referencingMessage referencedOffset replySnippet referencedTCUMessage |
	referencedMessage := (TCTMMocks mockTextMessageWith: self core withId: 1) text: 'Referenced Message'.
	referencingMessage := (TCTMMocks mockTextMessageWith: self core withId: 2 replyTo: 1) text: 'Referencing Message'.
	self core chatsHandler chats first addOldestMessage: referencedMessage.
	self core chatsHandler chats first addNewestMessage: referencingMessage.
		
	referencedTCUMessage := self subject scroller submorphs first.
	
	self subject scrollToShow: referencedTCUMessage.
	referencedOffset := self subject vScrollBar value.
	self subject scrollToNewestMessage.

	replySnippet := self subject findByClass: TCUReplySnippet.
	replySnippet click.
	
	self assert: referencedOffset equals: self subject vScrollBar value.