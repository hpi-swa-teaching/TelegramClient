testing
testPrivateChatHasNoDescription

	| groupChat chatInfoPage |

	self waitUntil: [self core chatsHandler chats anySatisfy: [:c | c isPrivate]].
	groupChat := (self core chatsHandler chats detect: [:chat | chat isPrivate]).

	self openChatWithId: groupChat id.
	self openInfoPageInChatWindow.

	chatInfoPage := (self subject findByClass: TCUChatInfoPage) morphs anyOne.
	self forceSaveScreenshotOf: chatInfoPage as: 'testPrivateChatHasNoDescription' in: self class defaultTestResultPath.
	self assert: 225928729 equals: (self computeHashOf: (self takeScreenshotOf: chatInfoPage)).