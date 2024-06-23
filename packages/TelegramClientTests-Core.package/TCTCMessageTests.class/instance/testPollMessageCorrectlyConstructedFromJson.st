testing
testPollMessageCorrectlyConstructedFromJson

	| pollMessageEvent chat pollMessage |

 	chat := TCTMMocks mockPrivateChat.
	pollMessageEvent := TCTMMocks mockPollMessageJsonFrom: chat id.
	pollMessage := TCCMessage newFromMessageEvent: pollMessageEvent in: chat with: self core.
	
	self assert: pollMessage allowsMultipleAnswers equals: true.
	self assert: 'Question' equals: pollMessage question.
	self assert: 'pollTypeRegular' equals: pollMessage pollType.
	self assert: false equals: pollMessage isClosed.
	self assert: false equals: pollMessage isAnonymous.
	self assert: 'Question' equals: pollMessage asText.
	self assert: 'Question' equals: pollMessage asSnippet.