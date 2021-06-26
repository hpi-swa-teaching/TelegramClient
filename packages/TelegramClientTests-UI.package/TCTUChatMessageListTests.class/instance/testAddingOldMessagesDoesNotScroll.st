testing
testAddingOldMessagesDoesNotScroll

	| offset loadedMessage secondTCUMessage |

	self fillWithMessages.
	secondTCUMessage := self subject scroller submorphs second.
	self subject scrollToShow: secondTCUMessage.
	
	loadedMessage := TCTMMocks mockMessage message: 'Loaded Message'.
	self subject addTop: loadedMessage.
	offset := self subject vScrollBar value.
	self subject scrollToShow: secondTCUMessage.
	self assert: offset equals: self subject vScrollBar value.