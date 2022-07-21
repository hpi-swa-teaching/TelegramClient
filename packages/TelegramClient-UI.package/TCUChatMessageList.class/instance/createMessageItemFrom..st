messages
createMessageItemFrom: aCoreMessage

	| messageItem |

	messageItem := TCUMessage newFrom: aCoreMessage.
	messageItem when: #requestScroll send: #requestScrollToMessage: to: self with: aCoreMessage replyToMessageId.
	messageItem isUserMessage
		ifTrue: [^ TCUMessageWrapper newFromMessage: messageItem withWidth: self scroller width].
		
	^ RectangleMorph new
			color: Color transparent;
			borderWidth: 0;
			width: self scroller width;
			height: messageItem height;
			addMorphCentered: messageItem;
			yourself