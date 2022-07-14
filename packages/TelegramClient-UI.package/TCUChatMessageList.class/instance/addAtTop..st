messages
addAtTop: aCoreMessage

	| wrapper messageItem lastMessage |
	(self isFromCurrentChat: aCoreMessage) ifFalse: [^ self].
	
	(aCoreMessage isLastMessageOfDay and: self items isEmpty not) ifTrue: [
		lastMessage := self items first message messageModel.
		self addTopDayDividerForDate: (lastMessage date asDate)
	].
	
	messageItem := TCUMessage newFrom: aCoreMessage.
	messageItem when: #requestScroll send: #requestScrollToMessage: to: self with: (aCoreMessage replyToMessageId).
	wrapper := TCUMessageWrapper newFromMessage: messageItem withWidth: self scroller width.
	self scroller addMorphFront: wrapper.
	self items addFirst: wrapper.
	
	self isFullyScrolledDown
		ifTrue: [self scrollToNewestMessage].
	self scrollBy: 0 @ (wrapper height negated).