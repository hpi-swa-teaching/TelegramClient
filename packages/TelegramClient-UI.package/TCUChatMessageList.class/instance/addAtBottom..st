messages
addAtBottom: aCoreMessage

	| wrapper |
	wrapper := self wrapperFor: (TCUMessage newFrom: aCoreMessage).
	self scroller addMorphBack: wrapper.
	self items addLast: wrapper.