testing
testPrivateChatHasNoDescription

	| groupChat chatInfoPage |

	self waitUntil: [self core chats anySatisfy: [:c | c isPrivate]].
	groupChat := (self core chats detect: [:chat | chat isPrivate]).

	self openChatWithId: groupChat id.
	self openInfoPageInChatWindow.

	chatInfoPage := (self subject findByClass: TCUChatInfoPage) morphs anyOne.
	self forceSaveScreenshotOf: chatInfoPage as: 'testPrivateChatHasNoDescription' in: self class defaultTestResultPath.
	self assert: 47576777 equals: (self computeHashOf: (self takeScreenshotOf: chatInfoPage)).