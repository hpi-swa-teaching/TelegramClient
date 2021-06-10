event handling
updateLastMessage: anEvent

	| content chat |

	(anEvent includesKey: 'last_message') ifTrue: [
		content := (anEvent at: 'last_message') at: 'content'.
		chat := self core chats getChat: (anEvent at: 'chat_id').
		
		(anEvent at: 'positions') notEmpty
			ifTrue: [chat position:
				(((anEvent at: 'positions')
					detect: [:e | ((e at: 'list') at: '@type') = 'chatListMain'])
				at: 'order')].

		(content at: '@type') = 'messageText'
			ifTrue: [chat lastMessage: ((content at: 'text') at: 'text')]
			ifFalse: [chat lastMessage: 'message type not supported yet'].

		self core chats notify].