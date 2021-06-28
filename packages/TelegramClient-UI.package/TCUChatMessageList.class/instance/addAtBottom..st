messages
addAtBottom: aMessage

	| wrapper |
	wrapper := self wrapperFor: (TCUMessage newFrom: aMessage).
	self scroller addMorphBack: wrapper.
	self items addLast: wrapper.