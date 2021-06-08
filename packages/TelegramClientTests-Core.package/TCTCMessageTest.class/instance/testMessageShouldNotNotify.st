testing
testMessageShouldNotNotify

	| chat message |
	
	chat := TCCChat newFromChatEvent: TCTMMocks mockMutedChatEvent.
	
	message := TCCMessage newFromMessageEvent: (TCTMMocks mockMessageJsonFrom: chat id) in: chat.
	
	self assert: false equals: message shouldNotify.