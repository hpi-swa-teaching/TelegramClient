messages
addAtTop: aCoreMessage

	| messageItem lastMessage |
	(self isFromCurrentChat: aCoreMessage) ifFalse: [^ self].
	
	(aCoreMessage isLastMessageOfDay and: self items isEmpty not) ifTrue: [
		lastMessage := self items first message messageModel.
		self addTopDayDividerForDate: lastMessage date asDate
	].
	
	messageItem := self createMessageItemFrom: aCoreMessage.
	self scroller addMorphFront: messageItem.
	self items addFirst: messageItem.
	
	self isFullyScrolledDown
		ifTrue: [self scrollToNewestMessage].
	self scrollBy: 0 @ (messageItem height negated).