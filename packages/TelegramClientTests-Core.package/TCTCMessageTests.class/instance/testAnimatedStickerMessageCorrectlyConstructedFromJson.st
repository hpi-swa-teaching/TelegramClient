testing
testAnimatedStickerMessageCorrectlyConstructedFromJson

	| stickerMessageEvent chat stickerMessage |

 	chat := TCTMMocks mockPrivateChat.
	stickerMessageEvent := TCTMMocks mockAnimatedStickerMessageJsonFrom: chat id.
	stickerMessage := TCCMessage newFromMessageEvent: stickerMessageEvent in: chat with: self core.

	self assert: TCTMMocks mockValidEmoji equals: stickerMessage text.