testing
testPollMessageCorrectlyConstructedFromJson

	| pollMessageEvent chat pollMessage |

 	chat := TCTMMocks mockPrivateChat.
	pollMessageEvent := TCTMMocks mockPollMessageJsonFrom: chat id.
	pollMessage := TCCMessage newFromMessageEvent: pollMessageEvent in: chat with: self core.
	
	self assert: pollMessage allowsMultipleAnswers equals: true