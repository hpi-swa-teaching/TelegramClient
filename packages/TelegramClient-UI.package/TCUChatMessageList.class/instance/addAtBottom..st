messages
addAtBottom: aCoreMessage

	| wasFullyScrolledDown messageItem |

	(self isFromCurrentChat: aCoreMessage)
		ifFalse: [ ^ self ].
	wasFullyScrolledDown := self isFullyScrolledDown.
	messageItem := TCUMessage newFrom: aCoreMessage.
	messageItem when: #requestScroll send: #requestScrollToMessage: to: self with: (aCoreMessage replyToMessageId).
	messageItem isUserMessage 
		ifTrue: [messageItem := TCUMessageWrapper newFromMessage: messageItem withWidth: self scroller width.]
		ifFalse: [messageItem := RectangleMorph new
				color: Color transparent;
				borderWidth: 0;
				width: self scroller width;
				height: messageItem height;
				addMorphCentered: messageItem;
				yourself].
	
	self scroller addMorphBack: messageItem.
	self items addLast: messageItem.
	wasFullyScrolledDown
		ifTrue: [ self scrollToNewestMessage ]