messages
addAtTop: aCoreMessage

	| wrapper |
	(self isFromCurrentChat: aCoreMessage) ifFalse: [^ self].
	
	wrapper := self wrapperFor: (TCUMessage newFrom: aCoreMessage).
	self scroller addMorphFront: wrapper.
	self items addFirst: wrapper.
	
	self isFullyScrolledDown
		ifTrue: [self scrollToNewestMessage].
	self scrollBy: 0 @ (wrapper height negated).