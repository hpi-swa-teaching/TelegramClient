testing
testPollMessageTypeIdentifiedCorrectly

	| pollMessageEvent chat pollMessage |

 	chat := TCTMMocks mockPrivateChat.
	pollMessageEvent := TCTMMocks mockPollMessageJsonFrom: chat id.
	pollMessage := TCCMessage newFromMessageEvent: pollMessageEvent in: chat with: self core.

	self assert: TCCPollMessage equals: pollMessage class.