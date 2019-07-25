sending
sendMessage
	| chat |
	(messageDraft = '' or: messageDraft = nil) ifTrue: [^ nil].
	chat := chats at: self getChatIndex ifAbsent: [^ nil ].
	backend sendMessage: messageDraft to: chat id.
	