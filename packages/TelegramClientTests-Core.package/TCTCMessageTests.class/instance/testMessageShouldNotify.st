testing
testMessageShouldNotify

 	| chat |

 	chat := TCCChat newFromChatEvent: (TCTMMocks mockChatEventMutedFor: 0).
 	self assert: true equals: ((TCTMMocks mockMessageFor: chat) shouldNotify).