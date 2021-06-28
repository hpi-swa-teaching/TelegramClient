testing
testDisplayedChatReceivesNewMessage

	| newMessage |

	newMessage := (TCTMMocks mockTextMessageWith: self core) text: 'New message'.
	self subject chat addNewestMessage: newMessage.
	self assertReading: newMessage asText inMorph: self subject scroller submorphs last.