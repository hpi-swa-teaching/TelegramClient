messages
addAtBottom: aMessage

	| wrapper |	
	(self isFromCurrentChat: aMessage) ifFalse: [^ self].
	
	wrapper := self wrapperFor: (TCUMessage newFrom: aMessage).
	self scroller addMorphBack: wrapper.
	self items addLast: wrapper.