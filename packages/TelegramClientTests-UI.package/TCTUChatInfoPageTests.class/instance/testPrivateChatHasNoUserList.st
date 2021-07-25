testing
testPrivateChatHasNoUserList

	| chatInfoPage |

	self openAnyChatSatisfying: [ :aChat | aChat isPrivate].
	self openInfoPageInChatWindow.

	chatInfoPage := (self subject findByClass: TCUChatInfoPage) morphs anyOne.
	self assertNotSeeing: TCUUserList in: chatInfoPage.