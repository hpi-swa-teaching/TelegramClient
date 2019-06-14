as yet unclassified
sendMessage
	| chat |
	(messageDraft = '' or: messageDraft = nil) ifTrue: [^ nil].
	chat := chats at: self getSelectedChatIndexAsNumber ifAbsent: [^ nil ].
	backend sendMessage: messageDraft to: chat id.
	