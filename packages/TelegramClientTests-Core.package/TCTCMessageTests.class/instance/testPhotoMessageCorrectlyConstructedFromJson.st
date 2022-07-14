testing
testPhotoMessageCorrectlyConstructedFromJson

	| photoMessageEvent chat photoMessage |

 	chat := TCTMMocks mockPrivateChat.
	photoMessageEvent := TCTMMocks mockPhotoMessageJsonFrom: chat id.
	photoMessage := TCCUserMessage newFromMessageEvent: photoMessageEvent in: chat with: self core.

	self assert: TCTMMocks mockText equals: photoMessage caption.
	self assert: photoMessage hasCaption.
	self assert: TCTMMocks mockImageId equals: photoMessage fileId.
	self assert: TCTMMocks mockPhotoHeight equals: photoMessage height.
	self assert: TCTMMocks mockPhotoWidth equals: photoMessage width.