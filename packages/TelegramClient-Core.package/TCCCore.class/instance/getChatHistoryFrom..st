accessing
getChatHistoryFrom: aChatID

	| messageId chatMessages |

	chatMessages := (self chats getChat: aChatID) messages.
	chatMessages isEmpty
		ifTrue: [messageId := 0]
		ifFalse: [messageId := chatMessages last messageId].

	self chatsHandler getChatHistoryFrom: aChatID with: messageId and: self chatsHandler messageLimit.