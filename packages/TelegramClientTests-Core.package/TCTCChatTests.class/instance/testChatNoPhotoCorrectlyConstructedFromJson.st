testing
testChatNoPhotoCorrectlyConstructedFromJson

	| mockChat |

 	mockChat := TCCChat newFromChatEvent: (TCTMMocks mockChatEventNoPhoto at: 'chat').
	
	self assert: 'MockChat' equals: mockChat title.
	self assert: TCTMMocks mockBasicGroupChat id equals: mockChat id.
	self assert: true equals: mockChat canSendMessages.
	self assert: false equals: mockChat muted.
	self assert: false equals: mockChat hasPhoto.