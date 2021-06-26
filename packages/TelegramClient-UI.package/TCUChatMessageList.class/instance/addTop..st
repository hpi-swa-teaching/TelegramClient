initialization
addTop: aMessage

	| wrapper |
	wrapper := self wrapperFor: (TCUMessage newFromTCCMessage: aMessage).
	self scroller addMorphFront: wrapper.
	self items addFirst: wrapper.
	
	self vScrollBar maximumValue = self vScrollBar value
		ifTrue: [self scrollToShow: self items last].
	self scrollBy: 0@(wrapper height negated).