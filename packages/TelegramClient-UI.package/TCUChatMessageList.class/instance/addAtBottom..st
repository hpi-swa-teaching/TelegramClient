messages
addAtBottom: aCoreMessage

	| wrapper wasFullyScrolledDown |
	
	(self isFromCurrentChat: aMessage)
		ifFalse: [ ^ self ].
	wasFullyScrolledDown := self isFullyScrolledDown.
	wrapper := self wrapperFor: (TCUMessage newFrom: aMessage).
	self scroller addMorphBack: wrapper.
	self items addLast: wrapper.
	wasFullyScrolledDown
		ifTrue: [ self scrollToNewestMessage ]