messages
addAtTop: aCoreMessage

	| wrapper |
	(self isFromCurrentChat: aCoreMessage) ifFalse: [^ self].
	
	wrapper := TCUMessageWrapper newFromMessage: (TCUMessage newFrom: aCoreMessage) withWidth: self scroller width.
	self scroller addMorphFront: wrapper.
	self items addFirst: wrapper.
	
	self isFullyScrolledDown
		ifTrue: [self scrollToNewestMessage].
	self scrollBy: 0 @ (wrapper height negated).