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
		
		lastMessage := (TCCMessage newFromMessageEvent: messageJson in: chat with: self core).
		chat lastMessageText: lastMessage asSnippet;
			lastMessageSenderName: lastMessage senderName;
			lastMessageSenderId: lastMessage userId.
		self chats notify].