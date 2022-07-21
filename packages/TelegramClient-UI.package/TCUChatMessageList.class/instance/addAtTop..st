messages
addAtTop: aCoreMessage

	| messageItem |
	(self isFromCurrentChat: aCoreMessage) ifFalse: [^ self].
	
	messageItem := self createMessageItemFrom: aCoreMessage.
	self scroller addMorphFront: messageItem.
	self items addFirst: messageItem.
	
	self isFullyScrolledDown
		ifTrue: [self scrollToNewestMessage].
	self scrollBy: 0 @ (messageItem height negated).