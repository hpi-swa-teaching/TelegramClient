event handling
updateLastMessage: anEvent

	| content chat |

	(anEvent includesKey: 'last_message') ifTrue: [
		content := (anEvent at: 'last_message') at: 'content'.
		chat := self app chats getChat: (anEvent at: 'chat_id').
		"ToDo: update order when necessary"
		"chat order: (anEvent at: 'chat_id')."

		(content at: '@type') = 'messageText' 
			ifTrue: [chat lastMessage: ((content at: 'text') at: 'text')]
			ifFalse: [chat lastMessage: 'message type not supported yet'].

		self app chats notify].