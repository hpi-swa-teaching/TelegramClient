messages
addAtTop: aCoreMessage

	| wrapper |
	wrapper := self wrapperFor: (TCUMessage newFrom: aCoreMessage).
	self scroller addMorphFront: wrapper.
	self items addFirst: wrapper.
	
	self vScrollBar maximumValue = self vScrollBar value
		ifTrue: [self scrollToNewestMessage].
	self scrollBy: 0 @ (wrapper height negated).