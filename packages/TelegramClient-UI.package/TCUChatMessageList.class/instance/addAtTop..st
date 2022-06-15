messages
addAtTop: aCoreMessage

	| wrapper messageItem |
	(self isFromCurrentChat: aCoreMessage) ifFalse: [^ self].
	
	messageItem := TCUMessage newFrom: aCoreMessage.
	messageItem when: #requestScroll send: #requestScrollToMessage: to: self with: (aCoreMessage replyToMessageId).
	wrapper := TCUMessageWrapper newFromMessage: messageItem withWidth: self scroller width.
	self scroller addMorphFront: wrapper.
	self items addFirst: wrapper.
	
	self isFullyScrolledDown
		ifTrue: [self scrollToNewestMessage].
	self scrollBy: 0 @ (wrapper height negated).