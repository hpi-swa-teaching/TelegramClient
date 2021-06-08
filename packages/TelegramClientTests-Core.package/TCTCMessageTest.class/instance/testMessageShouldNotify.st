testing
testMessageShouldNotify

	| chat message |
	
	chat := TCCChat newFromChatEvent: TCTMMocks mockUnmutedChatEvent.
	
	message := TCCMessage newFromMessageEvent: (TCTMMocks mockMessageJsonFrom: chat id) in: chat.
	
	self assert: true equals: message shouldNotify.