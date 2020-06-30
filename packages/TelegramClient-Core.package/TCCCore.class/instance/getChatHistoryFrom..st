accessing
getChatHistoryFrom: aChatID
	
	| currentMessages messageId chatMessages |
	
	chatMessages := (self chats getChat: aChatID) messages.
	chatMessages isEmpty 
		ifTrue: [messageId := 0]
		ifFalse: [messageId :=  chatMessages last messageId].
	Transcript show: 'message id: ' , messageId.
	currentMessages := (self chatsHandler messageLimit) - (chatMessages size).
	currentMessages > 0 ifTrue: [
		self chatsHandler getChatHistoryFrom: aChatID with: messageId and: currentMessages.].