testing
testNotSupportedMessageTypeIdentifiedCorrectly

	| notSupportedMessageEvent chat notSupportedMessage |

 	chat := TCTMMocks mockPrivateChat.
	notSupportedMessageEvent := TCTMMocks mockNotSupportedMessageJsonFrom: chat id.
	notSupportedMessage := TCCMessage newFromMessageEvent: notSupportedMessageEvent in: chat with: self core.

	self assert: TCCNotSupportedMessage equals: notSupportedMessage class.