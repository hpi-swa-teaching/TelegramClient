messages
addAtBottom: aCoreMessage

	| wrapper wasFullyScrolledDown |
	
	(self isFromCurrentChat: aCoreMessage)
		ifFalse: [ ^ self ].
	wasFullyScrolledDown := self isFullyScrolledDown.
	wrapper := TCUMessageWrapper newFromMessage: (TCUMessage newFrom: aCoreMessage) withWidth: self scroller width.
	self scroller addMorphBack: wrapper.
	self items addLast: wrapper.
	wasFullyScrolledDown
		ifTrue: [ self scrollToNewestMessage ]