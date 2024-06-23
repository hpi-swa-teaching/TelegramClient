testing
testAnimatedStickerMessageCorrectlyConstructedFromJson

	| stickerMessageEvent chat stickerMessage |

 	chat := TCTMMocks mockPrivateChat.
	stickerMessageEvent := TCTMMocks mockAnimatedStickerMessageJsonFrom: chat id.
	stickerMessage := TCCMessage newFromMessageEvent: stickerMessageEvent in: chat with: self core.

	self assert: TCTMMocks mockValidEmoji equals: stickerMessage text.
	self assert: TCTMMocks mockValidEmoji equals: stickerMessage asSnippet.
	self assert: TCTMMocks mockValidEmoji equals: stickerMessage asText.