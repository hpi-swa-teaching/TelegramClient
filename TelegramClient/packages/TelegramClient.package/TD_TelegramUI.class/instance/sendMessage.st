sending
sendMessage
	| chat |
	messageDraft isEmptyOrNil ifTrue: [^ nil].
	chat := chats at: self getChatIndex ifAbsent: [^ nil ].
	backend sendMessage: messageDraft to: chat id
	