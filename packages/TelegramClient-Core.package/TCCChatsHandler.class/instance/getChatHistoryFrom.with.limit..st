library calls
getChatHistoryFrom: aChatId with: aMessageId limit: aLimit

	| chat |

	chat := self core chats getChat: aChatId.
	chat ifNotWaitingForUpdate: [
		self core send: (TCCRequest newGetChatHistoryOf: aChatId from: aMessageId until: aLimit).
		chat requestMessages: aLimit
	].