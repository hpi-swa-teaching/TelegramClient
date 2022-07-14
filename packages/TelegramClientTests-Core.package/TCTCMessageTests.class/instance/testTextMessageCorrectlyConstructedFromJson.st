testing
testTextMessageCorrectlyConstructedFromJson

	| textMessageEvent chat textMessage |

 	chat := TCTMMocks mockPrivateChat.
	textMessageEvent := TCTMMocks mockMessageJsonFrom: chat id.
	textMessage := TCCUserMessage newFromMessageEvent: textMessageEvent in: chat with: self core.

	self assert: TCTMMocks mockText equals: textMessage text.