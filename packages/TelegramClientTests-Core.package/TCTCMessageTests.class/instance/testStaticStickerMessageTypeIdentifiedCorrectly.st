testing
testStaticStickerMessageTypeIdentifiedCorrectly

	| stickerMessageEvent chat stickerMessage |

 	chat := TCTMMocks mockPrivateChat.
	stickerMessageEvent := TCTMMocks mockStaticStickerMessageJsonFrom: chat id.
	stickerMessage := TCCMessage newFromMessageEvent: stickerMessageEvent in: chat with: self core.

	self assert: TCCStickerMessage equals: stickerMessage class.