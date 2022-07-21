messages
addAtBottom: aCoreMessage

	| wasFullyScrolledDown messageItem |

	(self isFromCurrentChat: aCoreMessage)
		ifFalse: [ ^ self ].
	wasFullyScrolledDown := self isFullyScrolledDown.
	messageItem := self createMessageItemFrom: aCoreMessage.
	self scroller addMorphBack: messageItem.
	self items addLast: messageItem.
	wasFullyScrolledDown
		ifTrue: [ self scrollToNewestMessage ]