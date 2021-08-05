event handling
updateLastMessage: anEvent

	| chat messageJson |

	(anEvent includesKey: 'last_message') ifTrue: [
		messageJson := anEvent at: 'last_message'.
		chat := self chats getChat: (anEvent at: 'chat_id').

		(anEvent at: 'positions') notEmpty
			ifTrue: [chat position:
				(((anEvent at: 'positions')
					detect: [:e | ((e at: 'list') at: '@type') = 'chatListMain'])
				at: 'order')].
		
		chat lastMessage: (TCCMessage newFromMessageEvent: messageJson in: chat with: self core) asSnippet.

		self chats notify.
	].
