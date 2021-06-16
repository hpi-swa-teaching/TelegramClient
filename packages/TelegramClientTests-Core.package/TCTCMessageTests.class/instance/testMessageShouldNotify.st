testing
testMessageShouldNotify

 	| chat message |

 	chat := TCCChat newFromChatEvent: TCTMMocks mockUnmutedChatEvent.

 	message := TCCMessage newFromMessageEvent: (TCTMMocks mockMessageJsonFrom: chat id) in: chat with: self core.

 	self assert: true equals: message shouldNotify.