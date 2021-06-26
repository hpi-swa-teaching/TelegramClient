testing
testMessageShouldNotNotify

 	| chat |
	
 	chat := TCCChat newFromChatEvent: (TCTMMocks mockChatEventMutedFor: 42).
 	self assert: false equals: ((TCTMMocks mockMessageIn: chat with: self core) shouldNotify).