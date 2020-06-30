events
chatHistoryReceived: aChatHistory

	| messageNumber chat messageObject chatID chatMessageNumber oldestMessageId |
	Transcript show:' wir sind hier'.
	messageNumber := (aChatHistory at: 'messages') size. 
	chatID := (((aChatHistory at: 'messages') at: 1) at: 'chat_id').
	chat := self app chats getChat: chatID.
	
	1 to: messageNumber do: [:x |
		messageObject := TCCMessage new.
		messageObject message: (((((aChatHistory at: 'messages') at: x) at: 'content') at: 'text') at: 'text').
		Transcript show: messageObject message.
		messageObject chatID: chatID.
		messageObject senderId: (((aChatHistory at: 'messages') at: x) at: 'sender_user_id').
		messageObject messageId: (((aChatHistory at: 'messages') at: x) at: 'id').
		chat messages add: messageObject.].
	
	oldestMessageId := chat messages last messageId.
	chatMessageNumber := messageLimit - chat messages size.
	chatMessageNumber > 0 ifTrue: [
		self getChatHistoryFrom: chatID with: oldestMessageId and: chatMessageNumber.].