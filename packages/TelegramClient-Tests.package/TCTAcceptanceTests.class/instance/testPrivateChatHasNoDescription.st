testing
testPrivateChatHasNoDescription

	| titleBar groupChat chatInfoPage |
	self wantsToTest: (TCUMain newWithCore: self core).

	[self core chats anySatisfy: [:c | c isPrivate]]
		whileFalse: [6 seconds wait.].
	groupChat := (self core chats detect: [:chat | chat isPrivate]).

	(self subject findByCriteria: [ :morph | (morph respondsTo: #chatID) and: [morph chatID = groupChat id]]) click.
	titleBar := (self subject findByClass: TCUChatWindow) morphs collect: [:chatWindow | chatWindow titleBar].
	(self subject createWrapperFor: titleBar) click.

	chatInfoPage := (self subject findByClass: TCUChatInfoPage) morphs anyOne.
	self forceSaveScreenshotOf: chatInfoPage as: 'testPrivateChatHasNoDescription' in: self class defaultTestResultPath.
	self assert: 236496437 equals: (self computeHashOf: (self takeScreenshotOf: chatInfoPage)).
