testing
testDisplayedChatLoadsOldMessage

	| loadedMessage |

	loadedMessage := (TCTMMocks mockMessageWith: self core) message: 'Loaded message'.
	self subject chat addOldestMessage: loadedMessage.
	self assertReading: loadedMessage message inMorph: self subject scroller submorphs first.