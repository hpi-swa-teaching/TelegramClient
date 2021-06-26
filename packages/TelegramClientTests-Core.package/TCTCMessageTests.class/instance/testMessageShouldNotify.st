testing
testMessageShouldNotify

 	| chat |

 	chat := TCCChat newFromChatEvent: (TCTMMocks mockChatEventMutedFor: 0).
 	self assert: true equals: ((TCTMMocks mockMessageIn: chat with: self core) shouldNotify).