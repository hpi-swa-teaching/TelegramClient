events
chatHistoryReceived: aChatHistory

	"adds the chat message history to the chat message list and calls for more messages if the message limit ist not yet achieved"
	| chat chatMessageNumber oldestMessageId chatID |

	(aChatHistory at: 'messages') ifNotEmpty: [
		chatID := ((aChatHistory at: 'messages') first at: 'chat_id').
		chat := self app chats getChat: chatID.

		(aChatHistory at: 'messages') do: [:message |
			((message at: 'content') at: '@type') = 'messageText' ifTrue: [
				chat messages add: (TCCMessage new
					message: (((message at: 'content') at: 'text') at: 'text');
					chatID: chatID;
					senderId: (message at: 'sender_user_id');
					messageId: (message at: 'id'))]].

		oldestMessageId := chat messages last messageId.
		chatMessageNumber := self messageLimit - chat messages size.
		chatMessageNumber > 0 ifTrue: [self getChatHistoryFrom: chatID with: oldestMessageId and: chatMessageNumber]].