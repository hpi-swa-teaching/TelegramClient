events
addChat: aChatEvent

	| chat |

	chat := (TCCChat newFromNewChatEvent: aChatEvent)
		
		lastMessage: ''.

	self app chats
		add: chat;
		notify.