testing
testMessageShouldNotNotify

 	| chat |
	
 	chat := TCCChat newFromChatEvent: (TCTMMocks mockChatEventMutedFor: 42).
 	self assert: false equals: ((TCTMMocks mockMessageFor: chat) shouldNotify).