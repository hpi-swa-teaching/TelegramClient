testing
testPhotoMessageTypeIdentifiedCorrectly

	| photoMessageEvent chat photoMessage |

 	chat := TCTMMocks mockPrivateChat.
	
	photoMessageEvent := TCTMMocks mockPhotoMessageJsonFrom: chat id.
	photoMessage := TCCMessage newFromMessageEvent: photoMessageEvent in: chat with: self core.
	
	self assert: TCCPhotoMessage equals: photoMessage class.
