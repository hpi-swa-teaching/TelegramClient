testing
testPrivateChatHasNoUserList

	| chatInfoPage |

	self openAnyChatWith: #isPrivate.
	self openInfoPageInChatWindow.

	chatInfoPage := (self subject findByClass: TCUChatInfoPage) morphs anyOne.
	self assertNotSeeing: TCUUserList in: chatInfoPage.