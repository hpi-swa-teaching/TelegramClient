testing
testDisplayedChatLoadsOldMessage

	| loadedMessage |

	loadedMessage := (TCTMMocks mockTextMessageWith: self core) text: 'Loaded message'.
	self subject chat addOldestMessage: loadedMessage.
	self assertReading: loadedMessage asText inMorph: self subject scroller submorphs first.