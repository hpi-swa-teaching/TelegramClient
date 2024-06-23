testing
testDocumentMessageCorrectlyConstructedFromJson

	| documentMessageEvent chat documentMessage |

 	chat := TCTMMocks mockPrivateChat.
	documentMessageEvent := TCTMMocks mockDocumentMessageJsonFrom: chat id.
	documentMessage := TCCMessage newFromMessageEvent: documentMessageEvent in: chat with: self core.

	self assert: TCTMMocks mockDocumentFileName equals: documentMessage filename.
	self assert: TCTMMocks mockDocumentFileName equals: documentMessage asSnippet.
	self assert: TCTMMocks mockDocumentFileName equals: documentMessage asText.