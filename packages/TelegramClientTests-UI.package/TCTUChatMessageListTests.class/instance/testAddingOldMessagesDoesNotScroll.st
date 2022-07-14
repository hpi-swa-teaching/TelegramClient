testing
testAddingOldMessagesDoesNotScroll

	| loadedMessage secondTCUMessage currentOffset previousOffset |

	secondTCUMessage := self subject scroller submorphs third.
	self subject scrollToShow: secondTCUMessage.
	
	loadedMessage := (TCTMMocks mockTextMessageWith: self core) text: 'Loaded Message'.
	self subject addAtTop: loadedMessage.

	previousOffset := self subject vScrollBar value.
	self subject scrollToShow: secondTCUMessage.
	currentOffset := self subject vScrollBar value.
	self assert: previousOffset equals: currentOffset.