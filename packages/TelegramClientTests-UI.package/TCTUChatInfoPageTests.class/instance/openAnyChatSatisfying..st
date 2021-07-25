navigating
openAnyChatSatisfying: aClosure

	| chat |

	chat := self core chats detect: [:aChat | aClosure value: aChat].

	self openChatWithId: chat id.