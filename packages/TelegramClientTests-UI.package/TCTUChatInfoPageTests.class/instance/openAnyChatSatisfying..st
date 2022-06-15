navigating
openAnyChatSatisfying: aClosure

	| chat |

	chat := self core chatsHandler chats detect: [:aChat | aClosure value: aChat].

	self openChatWithId: chat id.