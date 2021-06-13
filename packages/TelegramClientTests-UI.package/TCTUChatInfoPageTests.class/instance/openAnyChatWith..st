navigating
openAnyChatWith: aSymbol

	| chat |

	self waitUntil: [self core chats anySatisfy: [:c | c perform: aSymbol]].
	chat := (self core chats detect: [:aChat | aChat perform: aSymbol]).

	self openChatWithId: chat id.