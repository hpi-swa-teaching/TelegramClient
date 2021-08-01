testing
testChatDoesNotDisplayMessagesFromOtherChats

	| newMessage otherChat |

	otherChat := self core chatsHandler chats detect: [:chat | chat id ~= self subject chat id].
	newMessage := (TCTMMocks mockMessageIn: otherChat with: self core) text: 'New message'.
	self subject chat addNewestMessage: newMessage.
	self assertNotReading: newMessage asText in: self subject.