accessing
addBottom: aMessage

	| wrapper |
	wrapper := self wrapperFor: (TCUMessage newFromTCCMessage: aMessage).
	self scroller addMorphBack: wrapper.
	self messages addLast: wrapper.