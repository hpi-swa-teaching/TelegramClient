testing
testChatCorrectlyConstructedFromJson

	| mockChat |

 	mockChat := TCCChat newFromChatEvent: (TCTMMocks mockChatEvent at: 'chat').
	
	self assert: 'MockChat' equals: mockChat title.
	self assert: TCTMMocks mockBasicGroupChat id equals: mockChat id.
	self assert: true equals: mockChat canSendMessages.
	self assert: false equals: mockChat muted.
	self assert: TCTMMocks mockImageId equals: mockChat photoId.
	self assert: true equals: mockChat hasPhoto.