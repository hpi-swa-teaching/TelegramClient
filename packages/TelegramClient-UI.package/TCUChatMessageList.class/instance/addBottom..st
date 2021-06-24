accessing
addBottom: aMessage

	| wrapper |
	wrapper := self wrapperFor: (TCUMessage newFromTCCMessage: aMessage).
	self scroller addMorphBack: wrapper.
	self items addLast: wrapper.