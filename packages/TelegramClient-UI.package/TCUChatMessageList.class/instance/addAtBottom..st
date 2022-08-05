messages
addAtBottom: aCoreMessage

	| wasFullyScrolledDown messageItem |

	(self isFromCurrentChat: aCoreMessage)
		ifFalse: [ ^ self ].
	
	(aCoreMessage isFirstMessageOfDay) ifTrue: [self addBottomDayDividerForDate: aCoreMessage date asDate].
	
	wasFullyScrolledDown := self isFullyScrolledDown.
	messageItem := self createMessageItemFrom: aCoreMessage.
	self scroller addMorphBack: messageItem.
	self items addLast: messageItem.
	wasFullyScrolledDown
		ifTrue: [ self scrollToNewestMessage ].