testing
testMessageShouldNotNotify

 	| chat |
	
 	chat := TCCChat newFromChatEvent: ((TCTMMocks mockChatEventMutedFor: 42) at: 'chat').
 	self deny: ((TCTMMocks mockMessageIn: chat with: self core) shouldNotify).