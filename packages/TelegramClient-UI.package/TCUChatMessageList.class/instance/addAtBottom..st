messages
addAtBottom: aCoreMessage

	| wrapper wasFullyScrolledDown messageItem |

	(self isFromCurrentChat: aCoreMessage)
		ifFalse: [ ^ self ].
	
	(aCoreMessage isFirstMessageOfDay) ifTrue: [self addBottomDayDividerForDate: aCoreMessage date asDate].
	
	wasFullyScrolledDown := self isFullyScrolledDown.
	messageItem := TCUUserMessage newFrom: aCoreMessage.
	messageItem when: #requestScroll send: #requestScrollToMessage: to: self with: (aCoreMessage replyToMessageId).
	wrapper := TCUMessageWrapper newFromMessage: messageItem withWidth: self scroller width.
	self scroller addMorphBack: wrapper.
	self items addLast: wrapper.
	wasFullyScrolledDown
		ifTrue: [ self scrollToNewestMessage ]