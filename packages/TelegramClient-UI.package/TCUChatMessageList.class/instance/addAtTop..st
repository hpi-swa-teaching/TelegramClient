messages
addAtTop: aCoreMessage

	| messageItem |
	(self isFromCurrentChat: aCoreMessage) ifFalse: [^ self].
	
	messageItem := TCUUserMessage newFrom: aCoreMessage.
	messageItem when: #requestScroll send: #requestScrollToMessage: to: self with: (aCoreMessage replyToMessageId).
	messageItem isUserMessage 
		ifTrue: [messageItem := TCUMessageWrapper newFromMessage: messageItem withWidth: self scroller width.]
		ifFalse: [messageItem := RectangleMorph new
				color: Color transparent;
				borderWidth: 0;
				width: self scroller width;
				height: messageItem height;
				addMorphCentered: messageItem;
				yourself].
	self scroller addMorphFront: messageItem.
	self items addFirst: messageItem.
	
	self isFullyScrolledDown
		ifTrue: [self scrollToNewestMessage].
	self scrollBy: 0 @ (messageItem height negated).