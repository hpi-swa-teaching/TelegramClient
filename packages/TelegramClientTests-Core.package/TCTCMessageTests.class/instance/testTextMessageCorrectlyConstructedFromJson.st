testing
testTextMessageCorrectlyConstructedFromJson

	| textMessageEvent chat textMessage |

 	chat := TCTMMocks mockPrivateChat.
	textMessageEvent := TCTMMocks mockMessageJsonWith: chat id.
	textMessage := TCCMessage newFromMessageEvent: textMessageEvent in: chat with: self core.

	self assert: TCTMMocks mockText equals: textMessage text.