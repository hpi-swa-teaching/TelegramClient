testing
testMessageShouldNotify

 	| chat |

 	chat := TCCChat newFromChatEvent: ((TCTMMocks mockChatEventMutedFor: 0) at: 'chat').
 	self assert: ((TCTMMocks mockMessageIn: chat with: self core) shouldNotify).