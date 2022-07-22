event handling
updateLastMessage: anEvent

	| chat messageJson lastMessage |
	
	(anEvent includesKey: 'last_message') ifTrue: [
		messageJson := anEvent at: 'last_message'.
		chat := self chats getChat: (anEvent at: 'chat_id').

		(anEvent at: 'positions') notEmpty
			ifTrue: [chat position:
				(((anEvent at: 'positions')
					detect: [:e | ((e at: 'list') at: '@type') = 'chatListMain'])
				at: 'order')].
		
		lastMessage := (TCCUserMessage newFromMessageEvent: messageJson in: chat with: self core).
		chat lastMessageText: lastMessage asSnippet.
		chat lastMessageSenderName: lastMessage senderName.
		chat lastMessageSenderId: lastMessage userId.
		self chats notify].