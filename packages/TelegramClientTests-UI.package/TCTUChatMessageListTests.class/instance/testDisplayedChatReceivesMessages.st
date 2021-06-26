testing
testDisplayedChatReceivesMessages

	| newestMessage oldestMessage newerMessage |

	newestMessage := TCTMMocks mockMessage message: 'Newest message'.
	oldestMessage := TCTMMocks mockMessage message: 'Oldest message'.
	self subject chat addNewestMessage: newestMessage.
	self subject chat addOldestMessage: oldestMessage.
	self assertReading: newestMessage message inMorph: self subject scroller submorphs last.
	self assertReading: oldestMessage message inMorph: self subject scroller submorphs first.
	
	newerMessage := TCTMMocks mockMessage message: 'Newer message'.
	self subject chat addNewestMessage: newerMessage.
	self assertReading: newestMessage message inMorph: self subject scroller submorphs second.
	self assertReading: newerMessage message inMorph: self subject scroller submorphs last.