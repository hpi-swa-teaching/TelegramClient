testing
testDisplayedChatReceivesNewMessage

	| newMessage |

	newMessage := (TCTMMocks mockMessageWith: self core) message: 'New message'.
	self subject chat addNewestMessage: newMessage.
	self assertReading: newMessage message inMorph: self subject scroller submorphs last.