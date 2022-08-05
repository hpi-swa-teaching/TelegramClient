testing
testScrollToReferencedMessage

	| referencedMessage referencingMessage referencedOffset |
	referencedMessage := (TCTMMocks mockTextMessageWith: self core withId: 1)
		text: 'Referenced Message';
		chat: self subject chat.
	referencingMessage := (TCTMMocks mockTextMessageWith: self core withId: 2 replyTo: 1)
		text: 'Referencing Message';
		chat: self subject chat.
	self subject chat addOldestMessage: referencedMessage.
	self subject chat addNewestMessage: referencingMessage.
	
	self subject scrollToShow: self subject scroller submorphs first.
	referencedOffset := self subject vScrollBar value.
	self subject scrollToNewestMessage.

	(self subject findByClass: TCUReplySnippet) click.
	
	self assert: referencedOffset equals: self subject vScrollBar value.