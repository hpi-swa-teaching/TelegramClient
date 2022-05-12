messages
addAtBottom: aCoreMessage

	| wrapper wasFullyScrolledDown |
	
	(self isFromCurrentChat: aCoreMessage)
		ifFalse: [ ^ self ].
	wasFullyScrolledDown := self isFullyScrolledDown.
	wrapper := self wrapperFor: (TCUMessage newFrom: aCoreMessage).
	self scroller addMorphBack: wrapper.
	self items addLast: wrapper.
	wasFullyScrolledDown
		ifTrue: [ self scrollToNewestMessage ]