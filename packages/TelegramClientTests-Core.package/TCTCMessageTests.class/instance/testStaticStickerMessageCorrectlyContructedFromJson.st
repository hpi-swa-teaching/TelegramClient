testing
testStaticStickerMessageCorrectlyContructedFromJson

	| stickerMessageEvent chat stickerMessage |

 	chat := TCTMMocks mockPrivateChat.
	stickerMessageEvent := TCTMMocks mockStaticStickerMessageJsonFrom: chat id.
	stickerMessage := TCCMessage newFromMessageEvent: stickerMessageEvent in: chat with: self core.

	self assert: TCTMMocks mockStickerId equals: stickerMessage stickerId.
	self assert: TCTMMocks mockStickerWidth equals: stickerMessage width.
	self assert: TCTMMocks mockStickerHeight equals: stickerMessage height.