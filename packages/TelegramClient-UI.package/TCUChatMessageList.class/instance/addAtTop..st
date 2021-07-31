messages
addAtTop: aMessage

	| wrapper |
	(self isFromCurrentChat: aMessage) ifFalse: [^ self].
	
	wrapper := self wrapperFor: (TCUMessage newFrom: aMessage).
	self scroller addMorphFront: wrapper.
	self items addFirst: wrapper.
	
	self vScrollBar maximumValue = self vScrollBar value
		ifTrue: [self scrollToNewestMessage].
	self scrollBy: 0 @ (wrapper height negated).