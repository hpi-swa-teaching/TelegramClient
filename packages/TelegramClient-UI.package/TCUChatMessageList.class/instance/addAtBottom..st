messages
addAtBottom: aMessage

	| wrapper viewNewestMessage |

	(self isFromCurrentChat: aMessage) ifFalse: [^ self].
	viewNewestMessage := self vScrollBar maximumValue = self vScrollBar value.
	
	wrapper := self wrapperFor: (TCUMessage newFrom: aMessage).
	self scroller addMorphBack: wrapper.
	self items addLast: wrapper.
	
	viewNewestMessage ifTrue: [ self scrollToNewestMessage. ].