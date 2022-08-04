messages
createMessageItemFrom: aCoreMessage

	| messageItem |

	messageItem := TCUMessage newFrom: aCoreMessage.
	messageItem when: #requestScroll send: #requestScrollToMessage: to: self with: aCoreMessage replyToMessageId.
	messageItem isUserMessage
		ifTrue: [^ TCUUserMessageWrapper newFromMessage: messageItem withWidth: self scroller width]
		ifFalse: [^ TCUInfoMessageWrapper newFromMessage: messageItem withWidth: self scroller width].