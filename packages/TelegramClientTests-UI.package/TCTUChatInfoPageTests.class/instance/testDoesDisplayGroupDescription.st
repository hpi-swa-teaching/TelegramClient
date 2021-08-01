testing
testDoesDisplayGroupDescription

	| groupChat |

	self waitUntil: [self core chatsHandler chats anySatisfy: [:c | c isGroup]].
	groupChat := (self core chatsHandler chats detect: [:chat | chat isGroup]).

	self openChatWithId: groupChat id.

	self assertReading: groupChat description in: (self subject findByClass: TCUChatInfoPage).