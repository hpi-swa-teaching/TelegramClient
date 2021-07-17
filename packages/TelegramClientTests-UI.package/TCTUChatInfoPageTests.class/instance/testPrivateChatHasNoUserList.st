testing
testPrivateChatHasNoUserList

	| chatInfoPage |

	self openAnyChatThatSatisfies: [ :aChat | aChat isPrivate].
	self openInfoPageInChatWindow.

	chatInfoPage := (self subject findByClass: TCUChatInfoPage) morphs anyOne.
	self assertNotSeeing: TCUUserList in: chatInfoPage.