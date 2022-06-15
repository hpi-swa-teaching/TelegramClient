testing
testSelectAndDeselectMessageToReplyTo

	| newMessage chatWindow |
	
	self openChatWithId: 1.
	chatWindow := self subject chatWindow.
	newMessage := (TCTMMocks mockTextMessageWith: self core) text: 'New message'.
	chatWindow selectedChat addNewestMessage: newMessage.
	
	self assertNotReading: newMessage text inMorph: chatWindow inputBar.
	chatWindow selectedChat selectedReplyToMessageId: newMessage id.
	self assertReading: newMessage text inMorph: chatWindow inputBar.
	chatWindow selectedChat selectedReplyToMessageId: newMessage id.
	self assertNotReading: newMessage text inMorph: chatWindow inputBar.