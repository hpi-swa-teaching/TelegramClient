testing
testTextMessageTypeIdentifiedCorrectly

	| textMessageEvent chat textMessage |

 	chat := TCTMMocks mockPrivateChat.

	textMessageEvent := TCTMMocks mockMessageJsonFrom: chat id.
	textMessage := TCCMessage newFromMessageEvent: textMessageEvent in: chat with: self core.
	
	self assert: TCCTextMessage equals: textMessage class.

	

