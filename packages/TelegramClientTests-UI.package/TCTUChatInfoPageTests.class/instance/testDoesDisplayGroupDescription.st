testing
testDoesDisplayGroupDescription

	| groupChat |

	self waitUntil: [self core chats anySatisfy: [:c | c isGroup]].
	groupChat := (self core chats detect: [:chat | chat isGroup]).

	self openChatWithId: groupChat id.

	self assertReading: groupChat description in: (self subject findByClass: TCUChatInfoPage).