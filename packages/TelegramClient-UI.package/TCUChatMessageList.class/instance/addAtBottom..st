messages
addAtBottom: aMessage

	| wrapper wasViewingNewestMessage |
	
	(self isFromCurrentChat: aMessage)
		ifFalse: [ ^ self ].
	wasViewingNewestMessage := self isViewingNewestMessage.
	wrapper := self wrapperFor: (TCUMessage newFrom: aMessage).
	self scroller addMorphBack: wrapper.
	self items addLast: wrapper.
	wasViewingNewestMessage
		ifTrue: [ self scrollToNewestMessage ]