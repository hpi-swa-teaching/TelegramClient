testing
testPrivateChatHasNoUserList

	| chatInfoPage |

	self openAnyChatSatisfying: [ :aChat | aChat isPrivate].
	self openInfoPageInChatWindow.

	chatInfoPage := self subject findByClass: TCUChatInfoPage.

	self assert: (chatInfoPage findByClass: TCUUserList) morphs isEmpty.