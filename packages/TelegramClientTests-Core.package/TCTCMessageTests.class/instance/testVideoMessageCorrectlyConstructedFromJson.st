testing
testVideoMessageCorrectlyConstructedFromJson

	| videoMessageEvent chat videoMessage |

 	chat := TCTMMocks mockPrivateChat.
	videoMessageEvent := TCTMMocks mockVideoMessageJsonFrom: chat id.
	videoMessage := TCCMessage newFromMessageEvent: videoMessageEvent in: chat with: self core.

	self assert: TCTMMocks mockText equals: videoMessage caption.
	self assert: videoMessage hasCaption.
	self assert: TCTMMocks mockImageId equals: videoMessage thumbnailId.
	self assert: TCTMMocks mockPhotoHeight equals: videoMessage height.
	self assert: TCTMMocks mockPhotoWidth equals: videoMessage width.
	self assert: TCTMMocks mockVideoId equals: videoMessage videoId.
	self assert: 'Video: ', TCTMMocks mockText equals: videoMessage asSnippet.
	self assert: TCTMMocks mockText equals: videoMessage asText.