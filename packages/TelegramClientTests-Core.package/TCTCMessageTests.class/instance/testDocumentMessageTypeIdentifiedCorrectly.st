testing
testDocumentMessageTypeIdentifiedCorrectly

	| documentMessageEvent chat documentMessage |

 	chat := TCTMMocks mockPrivateChat.
	documentMessageEvent := TCTMMocks mockDocumentMessageJsonFrom: chat id.
	documentMessage := TCCMessage newFromMessageEvent: documentMessageEvent in: chat with: self core.

	self assert: TCCDocumentMessage equals: documentMessage class.