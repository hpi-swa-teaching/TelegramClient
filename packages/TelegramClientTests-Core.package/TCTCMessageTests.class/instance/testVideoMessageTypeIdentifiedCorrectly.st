testing
testVideoMessageTypeIdentifiedCorrectly

	| videoMessageEvent chat videoMessage |

 	chat := TCTMMocks mockPrivateChat.
	videoMessageEvent := TCTMMocks mockVideoMessageJsonFrom: chat id.
	videoMessage := TCCMessage newFromMessageEvent: videoMessageEvent in: chat with: self core.

	self assert: TCCVideoMessage equals: videoMessage class.