testing
testPhotoMessageCorrectlyConstructedFromJson

	| photoMessageEvent chat photoMessage |

 	chat := TCTMMocks mockPrivateChat.
	photoMessageEvent := TCTMMocks mockPhotoMessageJsonFrom: chat id.
	photoMessage := TCCMessage newFromMessageEvent: photoMessageEvent in: chat with: self core.

	self assert: TCTMMocks mockText equals: photoMessage caption.
	self assert: photoMessage hasCaption.
	self assert: 3 equals: photoMessage fileId.
	self assert: 200 equals: photoMessage height.
	self assert: 400 equals: photoMessage width.